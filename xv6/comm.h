#include "spinlock.h"

char buffers[BUFFER_SIZE][8]={"        "};
int sender_pids[BUFFER_SIZE]={0};
int recv_pids[BUFFER_SIZE]={0};
int queue[NPROC][MAX_QUEUE_SIZE]={{0}};
int front[NPROC]={0};
int rear[NPROC]={0};
int wait_queue[NPROC]={0};

int wakeup_process(int);
int sleep_process(int);
struct spinlock lock;


void enque(int pid, int index,void* ch)
{
  memmove(buffers[index], (char**)ch, MSSG_SIZE);
  queue[pid][rear[pid]] = index;
  rear[pid] = (rear[pid] + 1) % MAX_QUEUE_SIZE;
}

int deque(void *msg,int pid)
{
  if(front[pid] == rear[pid])return -1;
  int result = queue[pid][front[pid]];
  front[pid] = (front[pid] + 1) % MAX_QUEUE_SIZE;
  memmove(msg,buffers[result],MSSG_SIZE);
  recv_pids[result] = -1;
  return result;
}

