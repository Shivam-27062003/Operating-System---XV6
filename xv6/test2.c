#include "types.h"
#include "stat.h"
#include "user.h"


void print_variance(float xx)
{
 int beg=(int)(xx);
 int fin=(int)(xx*100)-beg*100;
 printf(1, "Variance of array for the file arr is %d.%d\n", beg, fin);
}



int
main(int argc, char *argv[])
{
	if(argc< 2){
		printf(1,"Need type and input filename\n");
		exit();
	}
	char *filename;
	filename=argv[2];
	int type = atoi(argv[1]);
	printf(1,"Type is %d and filename is %s\n",type, filename);

	int tot_sum = 0;	

	int size=1000;
	short arr[size];
	char c;
	int fd = open(filename, 0);
	for(int i=0; i<size; i++){
		read(fd, &c, 1);
		arr[i]=c-'0';
		read(fd, &c, 1);
	}	
  	close(fd);
  	// this is to supress warning
  	printf(1,"first elem %d\n", arr[0]);
  
  	//----FILL THE CODE HERE for unicast sum

    int n = 8;
    int L[n],R[n];
    for(int i=0;i<n;i++){
        L[i]=i*125;
        R[i]=(i+1)*125-1;
    }

    int me = getpid();


    int child_pid[n];
    for(int i=0;i<n;i++){
        int pid=fork();
        if(pid>0)child_pid[i]=pid;
        else break;
    }

    if(getpid()==me){
        for(int i=0;i<n;i++){
            void* ptr = &L[i];
            send(me,child_pid[i],ptr);
            ptr = &R[i];
            send(me,child_pid[i],ptr);

            char c[8]= "$$";
            void* data = c;
            recv(data);
            int sum = *(int*)data;  
            tot_sum+=sum;
            wait();
        }
    }
    else{
        char c[8] = "$$";
        void* data = c;
        recv(data);
        int l = *(int*)data;
        recv(data);
        int r = *(int*)data;
        int sum = 0;
        for(;l<=r;l++)sum+=arr[l];

        void *ptr = &sum;
        send(getpid(),me,ptr);
        exit();
    }
    


    float mean = tot_sum;
    mean /=1000;
    float var = 0;

    for(int i=0;i<n;i++){
        int pid=fork();
        if(pid>0)child_pid[i]=pid;
        else break;
    }
    if(getpid()==me){
        for(int i=0;i<n;i++){
            void* ptr = &L[i];
            send(me,child_pid[i],ptr);
            ptr = &R[i];
            send(me,child_pid[i],ptr);

            char c[8]= "$$";
            void* data = c;
            recv(data);
            float temp = *(float*)data;  
            var+=temp;
            wait();
        }
        var = var/1000;
    }
    else{
        char c[8] = "$$";
        void* data = c;
        recv(data);
        int l = *(int*)data;
        recv(data);
        int r = *(int*)data;

        float  sum = 0;
        for(;l<=r;l++)sum += (arr[l]-mean)*(arr[l]-mean);

        void *ptr = &sum;
        send(getpid(),me,ptr);
        exit();
    }

  	if(type==0){ //unicast sum
		printf(1,"Sum of array for file %s is %d\n", filename,tot_sum);
	}
    else{
        print_variance(var);
    }
	exit();
}
