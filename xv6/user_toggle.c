#include "types.h"
#include "stat.h"
#include "user.h"
    
    
int main(int argc, char *argv[])
{ 
    int a = toggle();
    if(a==0)printf(1,"TRACE_OFF\n");
    else printf(1,"TRACE_ON\n");
    exit();
}
  