#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "trace.h"
#include "comm.h"


char *Call_name[]={"$$",
"sys_fork",
"sys_exit",
"sys_wait",
"sys_pipe",
"sys_read", 
"sys_kill", 
"sys_exec", 
"sys_fstat", 
"sys_chdir", 
"sys_dup", 
"sys_getpid", 
"sys_sbrk",                     
"sys_sleep", 
"sys_uptime",
"sys_open", 
"sys_write", 
"sys_mknod", 
"sys_unlink",
"sys_link", 
"sys_mkdir", 
"sys_close"
};

int map[] = {0 ,9, 21, 10, 7, 2, 1, 8, 11, 6, 19, 20, 17, 15, 4, 5, 12, 13, 18, 14, 3, 16};

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  exit();
  return 0;  // not reached
}

int
sys_wait(void)
{
  return wait();
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

int
sys_toggle(void){
  if(trace==TRACE_ON){
    trace = TRACE_OFF;
  }
  else{
    trace = TRACE_ON;
    for(int i=1;i<=ONSC;i++){
      CALLS[i]=0;
    }
  }
  return trace;
}

int
sys_print_count(void){
  for(int i=1;i<=ONSC;i++){
    if(CALLS[map[i]]>0){
      cprintf(Call_name[map[i]]);
      cprintf(" ");
      cprintf("%d\n",CALLS[map[i]]);
    }
  }
  return 0;
}

int
sys_add(){
  int a,b;
  argint(0,&a);
  argint(1,&b);
  return a+b;
}

int 
sys_ps(void){
  ps();
  return 0;
}



// implemeting queue in an array for USING in PROCESS COMMUNICATION

int
sys_send(int sender_pid, int rec_pid, void *msg)
{
  void* data;
  argint(0, &sender_pid);
  argint(1, &rec_pid);
  argptr(2, (char**)&data, MSSG_SIZE);
  acquire(&lock);
  // cprintf("%s  \n",ch);
  for(int i = 0; i < BUFFER_SIZE; i++){
    if(recv_pids[i] <= 0){        
      sender_pids[i] = sender_pid;
      recv_pids[i] = rec_pid;
      enque(rec_pid, i,data);
      if(wait_queue[rec_pid] == 1){
        wait_queue[rec_pid] = 0;
        wakeup((void*)rec_pid);
      }
      release(&lock);
      // cprintf("%s\n",buffers[i]);
      return 0;
    }
  }
  release(&lock);
  return -1;
}

// MOD-1 : System call to receive message


int sys_recv(void *msg){
  argptr(0, (char**)&msg, MSSG_SIZE);
  int me = myproc()->pid;
  int val;
  while (1){
    acquire(&lock);
    val = deque(msg,me);
    if(val!=-1){
      release(&lock);
      // cprintf("Exit recv : %s\n", buffers[val]);
      return 0;
    }
    wait_queue[me] = 1;
    sleep((void*)me, &lock);
    release(&lock);
  }
  return 0;
}

int sys_send_multi(int sender_pid, int rec_pids[], void *msg){
  int n = 8;
  argint(0,&sender_pid);
  argptr(1,(char**)&rec_pids,n*sizeof(int));
  argptr(2,(char**)&msg,MSSG_SIZE);
  // cprintf("%d\n",sender_pid);
  int j = 0;
  acquire(&lock);
  for(int i=0;i<BUFFER_SIZE && j<n;i++){
    if(recv_pids[i] <= 0){
      sender_pids[i] = sender_pid;
      recv_pids[i] = rec_pids[j];
      enque(rec_pids[j], i,msg);
      cprintf("%s\n",buffers[i]);
      j++;
    }
  }
  release(&lock);
  for(int i=0;i<n;i++){
    if(wait_queue[rec_pids[i]]==1){
      wait_queue[rec_pids[i]]=0;
      wakeup((void*)rec_pids[i]);
    }
  }
  return 0;
}