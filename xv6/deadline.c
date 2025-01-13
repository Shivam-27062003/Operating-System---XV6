//A Simple C program
#include "types.h"
#include "stat.h"
#include "user.h"
    
 //passing command line arguments
    
int main(int argc, char *argv[])
{ 
    // printf(1,"%d\n",add(1,3));

    int a=atoi(argv[1]);
    int b=atoi(argv[2]);
    int c = deadline(a,b);
    printf(1,"%d\n",c);
    exit();
}
  
// This code is contributed by sambhav228