//A Simple C program
#include "types.h"
#include "stat.h"
#include "user.h"
    
 //passing command line arguments
    
int main(int argc, char *argv[])
{  
  
  int mypid = getpid();
  char num[] = "toxic27";
  void* mssg = num;
  int pids[8];
  for(int i=0;i<8;i++){
    int pid = fork();
    if(pid>0)pids[i]=pid;
    else break;
  }
  if(getpid()==mypid){
    for(int i=0;i<8;i++){
      send(mypid,pids[i],mssg);
      wait();
    }
  }
  else{
    char c[8]= "$$$$$$$";
    void* data = c;
    printf(1,"%d\n",recv(data));
    exit();
  }
  exit();
}
// This code is contributed by sambhav228