
_assig1_8:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:



int
main(int argc, char *argv[])
{
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	57                   	push   %edi
  12:	56                   	push   %esi
  13:	53                   	push   %ebx
  14:	51                   	push   %ecx
  15:	81 ec 98 00 00 00    	sub    $0x98,%esp
	if(argc< 2){
  1b:	83 39 01             	cmpl   $0x1,(%ecx)
{
  1e:	8b 41 04             	mov    0x4(%ecx),%eax
	if(argc< 2){
  21:	7e 41                	jle    64 <main+0x64>
		printf(1,"Need type and input filename\n");
		exit();
	}
	char *filename;
	filename=argv[2];
	int type = atoi(argv[1]);
  23:	83 ec 0c             	sub    $0xc,%esp
	filename=argv[2];
  26:	8b 78 08             	mov    0x8(%eax),%edi
	int type = atoi(argv[1]);
  29:	ff 70 04             	pushl  0x4(%eax)
	filename=argv[2];
  2c:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%ebp)
	int type = atoi(argv[1]);
  32:	e8 d9 05 00 00       	call   610 <atoi>
	printf(1,"Type is %d and filename is %s\n",type, filename);
  37:	57                   	push   %edi
  38:	50                   	push   %eax
  39:	68 a8 0b 00 00       	push   $0xba8
  3e:	6a 01                	push   $0x1
	int type = atoi(argv[1]);
  40:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
	printf(1,"Type is %d and filename is %s\n",type, filename);
  46:	e8 c5 07 00 00       	call   810 <printf>

	int tot_sum = 0;	

	int size=1000;
	short arr[size];
  4b:	83 c4 20             	add    $0x20,%esp
  4e:	89 e0                	mov    %esp,%eax
  50:	39 c4                	cmp    %eax,%esp
  52:	74 23                	je     77 <main+0x77>
  54:	81 ec 00 10 00 00    	sub    $0x1000,%esp
  5a:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
  61:	00 
  62:	eb ec                	jmp    50 <main+0x50>
		printf(1,"Need type and input filename\n");
  64:	53                   	push   %ebx
  65:	53                   	push   %ebx
  66:	68 e8 0b 00 00       	push   $0xbe8
  6b:	6a 01                	push   $0x1
  6d:	e8 9e 07 00 00       	call   810 <printf>
		exit();
  72:	e8 0c 06 00 00       	call   683 <exit>
	short arr[size];
  77:	81 ec d0 07 00 00    	sub    $0x7d0,%esp
  7d:	83 8c 24 cc 07 00 00 	orl    $0x0,0x7cc(%esp)
  84:	00 
  85:	89 e7                	mov    %esp,%edi
	char c;
	int fd = open(filename, 0);
  87:	51                   	push   %ecx
  88:	51                   	push   %ecx
  89:	89 fb                	mov    %edi,%ebx
  8b:	6a 00                	push   $0x0
  8d:	ff b5 68 ff ff ff    	pushl  -0x98(%ebp)
	short arr[size];
  93:	89 bd 70 ff ff ff    	mov    %edi,-0x90(%ebp)
	int fd = open(filename, 0);
  99:	e8 25 06 00 00       	call   6c3 <open>
  9e:	83 c4 10             	add    $0x10,%esp
  a1:	89 c6                	mov    %eax,%esi
	for(int i=0; i<size; i++){
  a3:	8d 87 d0 07 00 00    	lea    0x7d0(%edi),%eax
  a9:	8d bd 7b ff ff ff    	lea    -0x85(%ebp),%edi
  af:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
  b5:	8d 76 00             	lea    0x0(%esi),%esi
		read(fd, &c, 1);
  b8:	83 ec 04             	sub    $0x4,%esp
  bb:	83 c3 02             	add    $0x2,%ebx
  be:	6a 01                	push   $0x1
  c0:	57                   	push   %edi
  c1:	56                   	push   %esi
  c2:	e8 d4 05 00 00       	call   69b <read>
		arr[i]=c-'0';
  c7:	66 0f be 85 7b ff ff 	movsbw -0x85(%ebp),%ax
  ce:	ff 
		read(fd, &c, 1);
  cf:	83 c4 0c             	add    $0xc,%esp
		arr[i]=c-'0';
  d2:	83 e8 30             	sub    $0x30,%eax
  d5:	66 89 43 fe          	mov    %ax,-0x2(%ebx)
		read(fd, &c, 1);
  d9:	6a 01                	push   $0x1
  db:	57                   	push   %edi
  dc:	56                   	push   %esi
  dd:	e8 b9 05 00 00       	call   69b <read>
	for(int i=0; i<size; i++){
  e2:	83 c4 10             	add    $0x10,%esp
  e5:	3b 9d 74 ff ff ff    	cmp    -0x8c(%ebp),%ebx
  eb:	75 cb                	jne    b8 <main+0xb8>
	}	
  	close(fd);
  ed:	83 ec 0c             	sub    $0xc,%esp
  f0:	56                   	push   %esi
  f1:	e8 b5 05 00 00       	call   6ab <close>
  	// this is to supress warning
  	printf(1,"first elem %d\n", arr[0]);
  f6:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
  fc:	83 c4 0c             	add    $0xc,%esp
  ff:	0f bf 00             	movswl (%eax),%eax
 102:	50                   	push   %eax
 103:	68 06 0c 00 00       	push   $0xc06
 108:	6a 01                	push   $0x1
 10a:	e8 01 07 00 00       	call   810 <printf>
  
  	//----FILL THE CODE HERE for unicast sum

    int n = 8;
    int L[n],R[n];
 10f:	83 c4 10             	add    $0x10,%esp
 112:	31 d2                	xor    %edx,%edx
    for(int i=0;i<n;i++){
 114:	31 c0                	xor    %eax,%eax
 116:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 11d:	8d 76 00             	lea    0x0(%esi),%esi
        L[i]=i*125;
 120:	89 54 85 88          	mov    %edx,-0x78(%ebp,%eax,4)
        R[i]=(i+1)*125-1;
 124:	8d 4a 7c             	lea    0x7c(%edx),%ecx
 127:	83 c0 01             	add    $0x1,%eax
 12a:	83 c2 7d             	add    $0x7d,%edx
 12d:	89 4c 85 a4          	mov    %ecx,-0x5c(%ebp,%eax,4)
    for(int i=0;i<n;i++){
 131:	83 f8 08             	cmp    $0x8,%eax
 134:	75 ea                	jne    120 <main+0x120>
    }

    int me = getpid();
 136:	e8 c8 05 00 00       	call   703 <getpid>
 13b:	89 c3                	mov    %eax,%ebx


    int child_pid[n];
    for(int i=0;i<n;i++){
 13d:	8d 45 c8             	lea    -0x38(%ebp),%eax
 140:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
    int child_pid[n];
 146:	89 c6                	mov    %eax,%esi
 148:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 14f:	90                   	nop
        int pid=fork();
 150:	e8 26 05 00 00       	call   67b <fork>
        if(pid>0)child_pid[i]=pid;
 155:	85 c0                	test   %eax,%eax
 157:	7e 0c                	jle    165 <main+0x165>
 159:	89 06                	mov    %eax,(%esi)
    for(int i=0;i<n;i++){
 15b:	83 c6 04             	add    $0x4,%esi
 15e:	8d 45 e8             	lea    -0x18(%ebp),%eax
 161:	39 c6                	cmp    %eax,%esi
 163:	75 eb                	jne    150 <main+0x150>
        else break;
    }

    if(getpid()==me){
 165:	e8 99 05 00 00       	call   703 <getpid>
 16a:	39 d8                	cmp    %ebx,%eax
 16c:	0f 85 38 01 00 00    	jne    2aa <main+0x2aa>
	int tot_sum = 0;	
 172:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%ebp)
 179:	00 00 00 
 17c:	31 ff                	xor    %edi,%edi
 17e:	89 fe                	mov    %edi,%esi
        for(int i=0;i<n;i++){
            void* ptr = &L[i];
            send(me,child_pid[i],ptr);
 180:	8b 7c 35 c8          	mov    -0x38(%ebp,%esi,1),%edi
 184:	8d 45 88             	lea    -0x78(%ebp),%eax
 187:	83 ec 04             	sub    $0x4,%esp
 18a:	01 f0                	add    %esi,%eax
 18c:	50                   	push   %eax
 18d:	57                   	push   %edi
 18e:	53                   	push   %ebx
 18f:	e8 af 05 00 00       	call   743 <send>
            ptr = &R[i];
            send(me,child_pid[i],ptr);
 194:	8d 45 a8             	lea    -0x58(%ebp),%eax
 197:	83 c4 0c             	add    $0xc,%esp
 19a:	01 f0                	add    %esi,%eax
 19c:	83 c6 04             	add    $0x4,%esi
 19f:	50                   	push   %eax
 1a0:	57                   	push   %edi
 1a1:	53                   	push   %ebx
 1a2:	e8 9c 05 00 00       	call   743 <send>

            char c[8]= "$$";
            void* data = c;
            recv(data);
 1a7:	8d 45 80             	lea    -0x80(%ebp),%eax
            char c[8]= "$$";
 1aa:	c7 45 80 24 24 00 00 	movl   $0x2424,-0x80(%ebp)
            recv(data);
 1b1:	89 04 24             	mov    %eax,(%esp)
            char c[8]= "$$";
 1b4:	c7 45 84 00 00 00 00 	movl   $0x0,-0x7c(%ebp)
            recv(data);
 1bb:	e8 8b 05 00 00       	call   74b <recv>
            int sum = *(int*)data;  
            tot_sum+=sum;
 1c0:	8b bd 74 ff ff ff    	mov    -0x8c(%ebp),%edi
 1c6:	03 7d 80             	add    -0x80(%ebp),%edi
 1c9:	89 bd 74 ff ff ff    	mov    %edi,-0x8c(%ebp)
            wait();
 1cf:	e8 b7 04 00 00       	call   68b <wait>
        for(int i=0;i<n;i++){
 1d4:	83 c4 10             	add    $0x10,%esp
 1d7:	83 fe 20             	cmp    $0x20,%esi
 1da:	75 a4                	jne    180 <main+0x180>
 1dc:	89 fe                	mov    %edi,%esi
 1de:	8b bd 6c ff ff ff    	mov    -0x94(%ebp),%edi
 1e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    float mean = tot_sum;
    mean /=1000;
    float var = 0;

    for(int i=0;i<n;i++){
        int pid=fork();
 1e8:	e8 8e 04 00 00       	call   67b <fork>
        if(pid>0)child_pid[i]=pid;
 1ed:	85 c0                	test   %eax,%eax
 1ef:	7e 0c                	jle    1fd <main+0x1fd>
 1f1:	89 07                	mov    %eax,(%edi)
    for(int i=0;i<n;i++){
 1f3:	83 c7 04             	add    $0x4,%edi
 1f6:	8d 45 e8             	lea    -0x18(%ebp),%eax
 1f9:	39 c7                	cmp    %eax,%edi
 1fb:	75 eb                	jne    1e8 <main+0x1e8>
        else break;
    }
    if(getpid()==me){
 1fd:	e8 01 05 00 00       	call   703 <getpid>
 202:	39 d8                	cmp    %ebx,%eax
 204:	0f 85 16 01 00 00    	jne    320 <main+0x320>
    float var = 0;
 20a:	89 b5 70 ff ff ff    	mov    %esi,-0x90(%ebp)
 210:	d9 ee                	fldz   
 212:	31 ff                	xor    %edi,%edi
 214:	d9 9d 74 ff ff ff    	fstps  -0x8c(%ebp)
 21a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        for(int i=0;i<n;i++){
            void* ptr = &L[i];
            send(me,child_pid[i],ptr);
 220:	8b 74 3d c8          	mov    -0x38(%ebp,%edi,1),%esi
 224:	8d 45 88             	lea    -0x78(%ebp),%eax
 227:	83 ec 04             	sub    $0x4,%esp
 22a:	01 f8                	add    %edi,%eax
 22c:	50                   	push   %eax
 22d:	56                   	push   %esi
 22e:	53                   	push   %ebx
 22f:	e8 0f 05 00 00       	call   743 <send>
            ptr = &R[i];
            send(me,child_pid[i],ptr);
 234:	8d 45 a8             	lea    -0x58(%ebp),%eax
 237:	83 c4 0c             	add    $0xc,%esp
 23a:	01 f8                	add    %edi,%eax
 23c:	83 c7 04             	add    $0x4,%edi
 23f:	50                   	push   %eax
 240:	56                   	push   %esi
 241:	53                   	push   %ebx
 242:	e8 fc 04 00 00       	call   743 <send>

            char c[8]= "$$";
            void* data = c;
            recv(data);
 247:	8d 45 80             	lea    -0x80(%ebp),%eax
            char c[8]= "$$";
 24a:	c7 45 80 24 24 00 00 	movl   $0x2424,-0x80(%ebp)
            recv(data);
 251:	89 04 24             	mov    %eax,(%esp)
            char c[8]= "$$";
 254:	c7 45 84 00 00 00 00 	movl   $0x0,-0x7c(%ebp)
            recv(data);
 25b:	e8 eb 04 00 00       	call   74b <recv>
            float temp = *(float*)data;  
            var+=temp;
 260:	d9 85 74 ff ff ff    	flds   -0x8c(%ebp)
 266:	d8 45 80             	fadds  -0x80(%ebp)
 269:	d9 9d 74 ff ff ff    	fstps  -0x8c(%ebp)
            wait();
 26f:	e8 17 04 00 00       	call   68b <wait>
        for(int i=0;i<n;i++){
 274:	83 c4 10             	add    $0x10,%esp
 277:	83 ff 20             	cmp    $0x20,%edi
 27a:	75 a4                	jne    220 <main+0x220>
    }


  	//------------------

  	if(type==0){ //unicast sum
 27c:	83 bd 64 ff ff ff 00 	cmpl   $0x0,-0x9c(%ebp)
 283:	8b b5 70 ff ff ff    	mov    -0x90(%ebp),%esi
 289:	0f 85 06 01 00 00    	jne    395 <main+0x395>
		printf(1,"Sum of array for file %s is %d\n", filename,tot_sum);
 28f:	56                   	push   %esi
 290:	ff b5 68 ff ff ff    	pushl  -0x98(%ebp)
 296:	68 c8 0b 00 00       	push   $0xbc8
 29b:	6a 01                	push   $0x1
 29d:	e8 6e 05 00 00       	call   810 <printf>
 2a2:	83 c4 10             	add    $0x10,%esp
	}
	else print_variance(var);
	exit();
 2a5:	e8 d9 03 00 00       	call   683 <exit>
        recv(data);
 2aa:	83 ec 0c             	sub    $0xc,%esp
 2ad:	8d 7d 80             	lea    -0x80(%ebp),%edi
        char c[8] = "$$";
 2b0:	c7 45 80 24 24 00 00 	movl   $0x2424,-0x80(%ebp)
        recv(data);
 2b7:	57                   	push   %edi
        char c[8] = "$$";
 2b8:	c7 45 84 00 00 00 00 	movl   $0x0,-0x7c(%ebp)
        recv(data);
 2bf:	e8 87 04 00 00       	call   74b <recv>
        recv(data);
 2c4:	89 3c 24             	mov    %edi,(%esp)
        int l = *(int*)data;
 2c7:	8b 75 80             	mov    -0x80(%ebp),%esi
        recv(data);
 2ca:	e8 7c 04 00 00       	call   74b <recv>
        int r = *(int*)data;
 2cf:	8b 4d 80             	mov    -0x80(%ebp),%ecx
        for(;l<=r;l++)sum+=arr[l];
 2d2:	83 c4 10             	add    $0x10,%esp
        int sum = 0;
 2d5:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 2dc:	00 00 00 
        for(;l<=r;l++)sum+=arr[l];
 2df:	39 ce                	cmp    %ecx,%esi
 2e1:	7f 24                	jg     307 <main+0x307>
 2e3:	8b bd 70 ff ff ff    	mov    -0x90(%ebp),%edi
 2e9:	83 c1 01             	add    $0x1,%ecx
 2ec:	31 c0                	xor    %eax,%eax
 2ee:	66 90                	xchg   %ax,%ax
 2f0:	0f bf 14 77          	movswl (%edi,%esi,2),%edx
 2f4:	83 c6 01             	add    $0x1,%esi
 2f7:	01 d0                	add    %edx,%eax
 2f9:	39 ce                	cmp    %ecx,%esi
 2fb:	75 f3                	jne    2f0 <main+0x2f0>
 2fd:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
        send(getpid(),me,ptr);
 303:	eb 02                	jmp    307 <main+0x307>
 305:	dd d8                	fstp   %st(0)
        send(getpid(),me,ptr);
 307:	e8 f7 03 00 00       	call   703 <getpid>
 30c:	52                   	push   %edx
 30d:	8d 95 7c ff ff ff    	lea    -0x84(%ebp),%edx
 313:	52                   	push   %edx
 314:	53                   	push   %ebx
 315:	50                   	push   %eax
 316:	e8 28 04 00 00       	call   743 <send>
        exit();
 31b:	e8 63 03 00 00       	call   683 <exit>
        recv(data);
 320:	83 ec 0c             	sub    $0xc,%esp
 323:	8d 45 80             	lea    -0x80(%ebp),%eax
        char c[8] = "$$";
 326:	c7 45 80 24 24 00 00 	movl   $0x2424,-0x80(%ebp)
        recv(data);
 32d:	50                   	push   %eax
        char c[8] = "$$";
 32e:	c7 45 84 00 00 00 00 	movl   $0x0,-0x7c(%ebp)
        recv(data);
 335:	e8 11 04 00 00       	call   74b <recv>
        recv(data);
 33a:	8d 45 80             	lea    -0x80(%ebp),%eax
        int l = *(int*)data;
 33d:	8b 7d 80             	mov    -0x80(%ebp),%edi
        recv(data);
 340:	89 04 24             	mov    %eax,(%esp)
 343:	e8 03 04 00 00       	call   74b <recv>
        int r = *(int*)data;
 348:	8b 45 80             	mov    -0x80(%ebp),%eax
        for(;l<=r;l++)sum += (arr[l]-mean)*(arr[l]-mean);
 34b:	83 c4 10             	add    $0x10,%esp
        float  sum = 0;
 34e:	d9 ee                	fldz   
 350:	d9 95 7c ff ff ff    	fsts   -0x84(%ebp)
        for(;l<=r;l++)sum += (arr[l]-mean)*(arr[l]-mean);
 356:	39 c7                	cmp    %eax,%edi
 358:	7f ab                	jg     305 <main+0x305>
    float mean = tot_sum;
 35a:	89 b5 74 ff ff ff    	mov    %esi,-0x8c(%ebp)
 360:	db 85 74 ff ff ff    	fildl  -0x8c(%ebp)
 366:	83 c0 01             	add    $0x1,%eax
    mean /=1000;
 369:	d8 35 1c 0c 00 00    	fdivs  0xc1c
 36f:	8b 95 70 ff ff ff    	mov    -0x90(%ebp),%edx
 375:	8d 76 00             	lea    0x0(%esi),%esi
        for(;l<=r;l++)sum += (arr[l]-mean)*(arr[l]-mean);
 378:	df 04 7a             	filds  (%edx,%edi,2)
 37b:	83 c7 01             	add    $0x1,%edi
 37e:	d8 e1                	fsub   %st(1),%st
 380:	d8 c8                	fmul   %st(0),%st
 382:	de c2                	faddp  %st,%st(2)
 384:	39 f8                	cmp    %edi,%eax
 386:	75 f0                	jne    378 <main+0x378>
 388:	dd d8                	fstp   %st(0)
 38a:	d9 9d 7c ff ff ff    	fstps  -0x84(%ebp)
 390:	e9 72 ff ff ff       	jmp    307 <main+0x307>
        var = var/1000;
 395:	d9 85 74 ff ff ff    	flds   -0x8c(%ebp)
 39b:	d8 35 1c 0c 00 00    	fdivs  0xc1c
	else print_variance(var);
 3a1:	83 ec 10             	sub    $0x10,%esp
 3a4:	d9 1c 24             	fstps  (%esp)
 3a7:	e8 14 00 00 00       	call   3c0 <print_variance>
 3ac:	83 c4 10             	add    $0x10,%esp
 3af:	e9 f1 fe ff ff       	jmp    2a5 <main+0x2a5>
 3b4:	66 90                	xchg   %ax,%ax
 3b6:	66 90                	xchg   %ax,%ax
 3b8:	66 90                	xchg   %ax,%ax
 3ba:	66 90                	xchg   %ax,%ax
 3bc:	66 90                	xchg   %ax,%ax
 3be:	66 90                	xchg   %ax,%ax

000003c0 <print_variance>:
{
 3c0:	f3 0f 1e fb          	endbr32 
 3c4:	55                   	push   %ebp
 3c5:	89 e5                	mov    %esp,%ebp
 3c7:	83 ec 18             	sub    $0x18,%esp
 int beg=(int)(xx);
 3ca:	d9 7d f6             	fnstcw -0xa(%ebp)
{
 3cd:	d9 45 08             	flds   0x8(%ebp)
 int beg=(int)(xx);
 3d0:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
 3d4:	80 cc 0c             	or     $0xc,%ah
 3d7:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
 3db:	d9 6d f4             	fldcw  -0xc(%ebp)
 3de:	db 55 f0             	fistl  -0x10(%ebp)
 3e1:	d9 6d f6             	fldcw  -0xa(%ebp)
 3e4:	8b 55 f0             	mov    -0x10(%ebp),%edx
 int fin=(int)(xx*100)-beg*100;
 3e7:	d8 0d 18 0c 00 00    	fmuls  0xc18
 3ed:	d9 6d f4             	fldcw  -0xc(%ebp)
 3f0:	db 5d f0             	fistpl -0x10(%ebp)
 3f3:	d9 6d f6             	fldcw  -0xa(%ebp)
 3f6:	6b ca 9c             	imul   $0xffffff9c,%edx,%ecx
 3f9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 3fc:	01 c8                	add    %ecx,%eax
 printf(1, "Variance of array for the file arr is %d.%d\n", beg, fin);
 3fe:	50                   	push   %eax
 3ff:	52                   	push   %edx
 400:	68 78 0b 00 00       	push   $0xb78
 405:	6a 01                	push   $0x1
 407:	e8 04 04 00 00       	call   810 <printf>
}
 40c:	83 c4 10             	add    $0x10,%esp
 40f:	c9                   	leave  
 410:	c3                   	ret    
 411:	66 90                	xchg   %ax,%ax
 413:	66 90                	xchg   %ax,%ax
 415:	66 90                	xchg   %ax,%ax
 417:	66 90                	xchg   %ax,%ax
 419:	66 90                	xchg   %ax,%ax
 41b:	66 90                	xchg   %ax,%ax
 41d:	66 90                	xchg   %ax,%ax
 41f:	90                   	nop

00000420 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 420:	f3 0f 1e fb          	endbr32 
 424:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 425:	31 c0                	xor    %eax,%eax
{
 427:	89 e5                	mov    %esp,%ebp
 429:	53                   	push   %ebx
 42a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 42d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
 430:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 434:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 437:	83 c0 01             	add    $0x1,%eax
 43a:	84 d2                	test   %dl,%dl
 43c:	75 f2                	jne    430 <strcpy+0x10>
    ;
  return os;
}
 43e:	89 c8                	mov    %ecx,%eax
 440:	5b                   	pop    %ebx
 441:	5d                   	pop    %ebp
 442:	c3                   	ret    
 443:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000450 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 450:	f3 0f 1e fb          	endbr32 
 454:	55                   	push   %ebp
 455:	89 e5                	mov    %esp,%ebp
 457:	53                   	push   %ebx
 458:	8b 4d 08             	mov    0x8(%ebp),%ecx
 45b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
 45e:	0f b6 01             	movzbl (%ecx),%eax
 461:	0f b6 1a             	movzbl (%edx),%ebx
 464:	84 c0                	test   %al,%al
 466:	75 19                	jne    481 <strcmp+0x31>
 468:	eb 26                	jmp    490 <strcmp+0x40>
 46a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 470:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
 474:	83 c1 01             	add    $0x1,%ecx
 477:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 47a:	0f b6 1a             	movzbl (%edx),%ebx
 47d:	84 c0                	test   %al,%al
 47f:	74 0f                	je     490 <strcmp+0x40>
 481:	38 d8                	cmp    %bl,%al
 483:	74 eb                	je     470 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 485:	29 d8                	sub    %ebx,%eax
}
 487:	5b                   	pop    %ebx
 488:	5d                   	pop    %ebp
 489:	c3                   	ret    
 48a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 490:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 492:	29 d8                	sub    %ebx,%eax
}
 494:	5b                   	pop    %ebx
 495:	5d                   	pop    %ebp
 496:	c3                   	ret    
 497:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49e:	66 90                	xchg   %ax,%ax

000004a0 <strlen>:

uint
strlen(const char *s)
{
 4a0:	f3 0f 1e fb          	endbr32 
 4a4:	55                   	push   %ebp
 4a5:	89 e5                	mov    %esp,%ebp
 4a7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 4aa:	80 3a 00             	cmpb   $0x0,(%edx)
 4ad:	74 21                	je     4d0 <strlen+0x30>
 4af:	31 c0                	xor    %eax,%eax
 4b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4b8:	83 c0 01             	add    $0x1,%eax
 4bb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 4bf:	89 c1                	mov    %eax,%ecx
 4c1:	75 f5                	jne    4b8 <strlen+0x18>
    ;
  return n;
}
 4c3:	89 c8                	mov    %ecx,%eax
 4c5:	5d                   	pop    %ebp
 4c6:	c3                   	ret    
 4c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ce:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
 4d0:	31 c9                	xor    %ecx,%ecx
}
 4d2:	5d                   	pop    %ebp
 4d3:	89 c8                	mov    %ecx,%eax
 4d5:	c3                   	ret    
 4d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4dd:	8d 76 00             	lea    0x0(%esi),%esi

000004e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4e0:	f3 0f 1e fb          	endbr32 
 4e4:	55                   	push   %ebp
 4e5:	89 e5                	mov    %esp,%ebp
 4e7:	57                   	push   %edi
 4e8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 4eb:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 4f1:	89 d7                	mov    %edx,%edi
 4f3:	fc                   	cld    
 4f4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4f6:	89 d0                	mov    %edx,%eax
 4f8:	5f                   	pop    %edi
 4f9:	5d                   	pop    %ebp
 4fa:	c3                   	ret    
 4fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <strchr>:

char*
strchr(const char *s, char c)
{
 500:	f3 0f 1e fb          	endbr32 
 504:	55                   	push   %ebp
 505:	89 e5                	mov    %esp,%ebp
 507:	8b 45 08             	mov    0x8(%ebp),%eax
 50a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 50e:	0f b6 10             	movzbl (%eax),%edx
 511:	84 d2                	test   %dl,%dl
 513:	75 16                	jne    52b <strchr+0x2b>
 515:	eb 21                	jmp    538 <strchr+0x38>
 517:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51e:	66 90                	xchg   %ax,%ax
 520:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 524:	83 c0 01             	add    $0x1,%eax
 527:	84 d2                	test   %dl,%dl
 529:	74 0d                	je     538 <strchr+0x38>
    if(*s == c)
 52b:	38 d1                	cmp    %dl,%cl
 52d:	75 f1                	jne    520 <strchr+0x20>
      return (char*)s;
  return 0;
}
 52f:	5d                   	pop    %ebp
 530:	c3                   	ret    
 531:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 538:	31 c0                	xor    %eax,%eax
}
 53a:	5d                   	pop    %ebp
 53b:	c3                   	ret    
 53c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000540 <gets>:

char*
gets(char *buf, int max)
{
 540:	f3 0f 1e fb          	endbr32 
 544:	55                   	push   %ebp
 545:	89 e5                	mov    %esp,%ebp
 547:	57                   	push   %edi
 548:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 549:	31 f6                	xor    %esi,%esi
{
 54b:	53                   	push   %ebx
 54c:	89 f3                	mov    %esi,%ebx
 54e:	83 ec 1c             	sub    $0x1c,%esp
 551:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 554:	eb 33                	jmp    589 <gets+0x49>
 556:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 560:	83 ec 04             	sub    $0x4,%esp
 563:	8d 45 e7             	lea    -0x19(%ebp),%eax
 566:	6a 01                	push   $0x1
 568:	50                   	push   %eax
 569:	6a 00                	push   $0x0
 56b:	e8 2b 01 00 00       	call   69b <read>
    if(cc < 1)
 570:	83 c4 10             	add    $0x10,%esp
 573:	85 c0                	test   %eax,%eax
 575:	7e 1c                	jle    593 <gets+0x53>
      break;
    buf[i++] = c;
 577:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 57b:	83 c7 01             	add    $0x1,%edi
 57e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 581:	3c 0a                	cmp    $0xa,%al
 583:	74 23                	je     5a8 <gets+0x68>
 585:	3c 0d                	cmp    $0xd,%al
 587:	74 1f                	je     5a8 <gets+0x68>
  for(i=0; i+1 < max; ){
 589:	83 c3 01             	add    $0x1,%ebx
 58c:	89 fe                	mov    %edi,%esi
 58e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 591:	7c cd                	jl     560 <gets+0x20>
 593:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 595:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 598:	c6 03 00             	movb   $0x0,(%ebx)
}
 59b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 59e:	5b                   	pop    %ebx
 59f:	5e                   	pop    %esi
 5a0:	5f                   	pop    %edi
 5a1:	5d                   	pop    %ebp
 5a2:	c3                   	ret    
 5a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5a7:	90                   	nop
 5a8:	8b 75 08             	mov    0x8(%ebp),%esi
 5ab:	8b 45 08             	mov    0x8(%ebp),%eax
 5ae:	01 de                	add    %ebx,%esi
 5b0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 5b2:	c6 03 00             	movb   $0x0,(%ebx)
}
 5b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5b8:	5b                   	pop    %ebx
 5b9:	5e                   	pop    %esi
 5ba:	5f                   	pop    %edi
 5bb:	5d                   	pop    %ebp
 5bc:	c3                   	ret    
 5bd:	8d 76 00             	lea    0x0(%esi),%esi

000005c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 5c0:	f3 0f 1e fb          	endbr32 
 5c4:	55                   	push   %ebp
 5c5:	89 e5                	mov    %esp,%ebp
 5c7:	56                   	push   %esi
 5c8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 5c9:	83 ec 08             	sub    $0x8,%esp
 5cc:	6a 00                	push   $0x0
 5ce:	ff 75 08             	pushl  0x8(%ebp)
 5d1:	e8 ed 00 00 00       	call   6c3 <open>
  if(fd < 0)
 5d6:	83 c4 10             	add    $0x10,%esp
 5d9:	85 c0                	test   %eax,%eax
 5db:	78 2b                	js     608 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 5dd:	83 ec 08             	sub    $0x8,%esp
 5e0:	ff 75 0c             	pushl  0xc(%ebp)
 5e3:	89 c3                	mov    %eax,%ebx
 5e5:	50                   	push   %eax
 5e6:	e8 f0 00 00 00       	call   6db <fstat>
  close(fd);
 5eb:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 5ee:	89 c6                	mov    %eax,%esi
  close(fd);
 5f0:	e8 b6 00 00 00       	call   6ab <close>
  return r;
 5f5:	83 c4 10             	add    $0x10,%esp
}
 5f8:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5fb:	89 f0                	mov    %esi,%eax
 5fd:	5b                   	pop    %ebx
 5fe:	5e                   	pop    %esi
 5ff:	5d                   	pop    %ebp
 600:	c3                   	ret    
 601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 608:	be ff ff ff ff       	mov    $0xffffffff,%esi
 60d:	eb e9                	jmp    5f8 <stat+0x38>
 60f:	90                   	nop

00000610 <atoi>:

int
atoi(const char *s)
{
 610:	f3 0f 1e fb          	endbr32 
 614:	55                   	push   %ebp
 615:	89 e5                	mov    %esp,%ebp
 617:	53                   	push   %ebx
 618:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 61b:	0f be 02             	movsbl (%edx),%eax
 61e:	8d 48 d0             	lea    -0x30(%eax),%ecx
 621:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 624:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 629:	77 1a                	ja     645 <atoi+0x35>
 62b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 62f:	90                   	nop
    n = n*10 + *s++ - '0';
 630:	83 c2 01             	add    $0x1,%edx
 633:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 636:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 63a:	0f be 02             	movsbl (%edx),%eax
 63d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 640:	80 fb 09             	cmp    $0x9,%bl
 643:	76 eb                	jbe    630 <atoi+0x20>
  return n;
}
 645:	89 c8                	mov    %ecx,%eax
 647:	5b                   	pop    %ebx
 648:	5d                   	pop    %ebp
 649:	c3                   	ret    
 64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000650 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 650:	f3 0f 1e fb          	endbr32 
 654:	55                   	push   %ebp
 655:	89 e5                	mov    %esp,%ebp
 657:	57                   	push   %edi
 658:	8b 45 10             	mov    0x10(%ebp),%eax
 65b:	8b 55 08             	mov    0x8(%ebp),%edx
 65e:	56                   	push   %esi
 65f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 662:	85 c0                	test   %eax,%eax
 664:	7e 0f                	jle    675 <memmove+0x25>
 666:	01 d0                	add    %edx,%eax
  dst = vdst;
 668:	89 d7                	mov    %edx,%edi
 66a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
 670:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 671:	39 f8                	cmp    %edi,%eax
 673:	75 fb                	jne    670 <memmove+0x20>
  return vdst;
}
 675:	5e                   	pop    %esi
 676:	89 d0                	mov    %edx,%eax
 678:	5f                   	pop    %edi
 679:	5d                   	pop    %ebp
 67a:	c3                   	ret    

0000067b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 67b:	b8 01 00 00 00       	mov    $0x1,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <exit>:
SYSCALL(exit)
 683:	b8 02 00 00 00       	mov    $0x2,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <wait>:
SYSCALL(wait)
 68b:	b8 03 00 00 00       	mov    $0x3,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <pipe>:
SYSCALL(pipe)
 693:	b8 04 00 00 00       	mov    $0x4,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <read>:
SYSCALL(read)
 69b:	b8 05 00 00 00       	mov    $0x5,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <write>:
SYSCALL(write)
 6a3:	b8 10 00 00 00       	mov    $0x10,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <close>:
SYSCALL(close)
 6ab:	b8 15 00 00 00       	mov    $0x15,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <kill>:
SYSCALL(kill)
 6b3:	b8 06 00 00 00       	mov    $0x6,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <exec>:
SYSCALL(exec)
 6bb:	b8 07 00 00 00       	mov    $0x7,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <open>:
SYSCALL(open)
 6c3:	b8 0f 00 00 00       	mov    $0xf,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    

000006cb <mknod>:
SYSCALL(mknod)
 6cb:	b8 11 00 00 00       	mov    $0x11,%eax
 6d0:	cd 40                	int    $0x40
 6d2:	c3                   	ret    

000006d3 <unlink>:
SYSCALL(unlink)
 6d3:	b8 12 00 00 00       	mov    $0x12,%eax
 6d8:	cd 40                	int    $0x40
 6da:	c3                   	ret    

000006db <fstat>:
SYSCALL(fstat)
 6db:	b8 08 00 00 00       	mov    $0x8,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    

000006e3 <link>:
SYSCALL(link)
 6e3:	b8 13 00 00 00       	mov    $0x13,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret    

000006eb <mkdir>:
SYSCALL(mkdir)
 6eb:	b8 14 00 00 00       	mov    $0x14,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    

000006f3 <chdir>:
SYSCALL(chdir)
 6f3:	b8 09 00 00 00       	mov    $0x9,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret    

000006fb <dup>:
SYSCALL(dup)
 6fb:	b8 0a 00 00 00       	mov    $0xa,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <getpid>:
SYSCALL(getpid)
 703:	b8 0b 00 00 00       	mov    $0xb,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <sbrk>:
SYSCALL(sbrk)
 70b:	b8 0c 00 00 00       	mov    $0xc,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    

00000713 <sleep>:
SYSCALL(sleep)
 713:	b8 0d 00 00 00       	mov    $0xd,%eax
 718:	cd 40                	int    $0x40
 71a:	c3                   	ret    

0000071b <uptime>:
SYSCALL(uptime)
 71b:	b8 0e 00 00 00       	mov    $0xe,%eax
 720:	cd 40                	int    $0x40
 722:	c3                   	ret    

00000723 <toggle>:
SYSCALL(toggle)
 723:	b8 16 00 00 00       	mov    $0x16,%eax
 728:	cd 40                	int    $0x40
 72a:	c3                   	ret    

0000072b <print_count>:
SYSCALL(print_count);
 72b:	b8 17 00 00 00       	mov    $0x17,%eax
 730:	cd 40                	int    $0x40
 732:	c3                   	ret    

00000733 <add>:
SYSCALL(add);
 733:	b8 18 00 00 00       	mov    $0x18,%eax
 738:	cd 40                	int    $0x40
 73a:	c3                   	ret    

0000073b <ps>:
SYSCALL(ps);
 73b:	b8 19 00 00 00       	mov    $0x19,%eax
 740:	cd 40                	int    $0x40
 742:	c3                   	ret    

00000743 <send>:
SYSCALL(send);
 743:	b8 1a 00 00 00       	mov    $0x1a,%eax
 748:	cd 40                	int    $0x40
 74a:	c3                   	ret    

0000074b <recv>:
SYSCALL(recv);
 74b:	b8 1b 00 00 00       	mov    $0x1b,%eax
 750:	cd 40                	int    $0x40
 752:	c3                   	ret    

00000753 <send_multi>:
SYSCALL(send_multi);
 753:	b8 1c 00 00 00       	mov    $0x1c,%eax
 758:	cd 40                	int    $0x40
 75a:	c3                   	ret    
 75b:	66 90                	xchg   %ax,%ax
 75d:	66 90                	xchg   %ax,%ax
 75f:	90                   	nop

00000760 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 3c             	sub    $0x3c,%esp
 769:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 76c:	89 d1                	mov    %edx,%ecx
{
 76e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 771:	85 d2                	test   %edx,%edx
 773:	0f 89 7f 00 00 00    	jns    7f8 <printint+0x98>
 779:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 77d:	74 79                	je     7f8 <printint+0x98>
    neg = 1;
 77f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 786:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 788:	31 db                	xor    %ebx,%ebx
 78a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 78d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 790:	89 c8                	mov    %ecx,%eax
 792:	31 d2                	xor    %edx,%edx
 794:	89 cf                	mov    %ecx,%edi
 796:	f7 75 c4             	divl   -0x3c(%ebp)
 799:	0f b6 92 28 0c 00 00 	movzbl 0xc28(%edx),%edx
 7a0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7a3:	89 d8                	mov    %ebx,%eax
 7a5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7a8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7ab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7b1:	76 dd                	jbe    790 <printint+0x30>
  if(neg)
 7b3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7b6:	85 c9                	test   %ecx,%ecx
 7b8:	74 0c                	je     7c6 <printint+0x66>
    buf[i++] = '-';
 7ba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7bf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7c1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7c6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7c9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7cd:	eb 07                	jmp    7d6 <printint+0x76>
 7cf:	90                   	nop
 7d0:	0f b6 13             	movzbl (%ebx),%edx
 7d3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7d6:	83 ec 04             	sub    $0x4,%esp
 7d9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7dc:	6a 01                	push   $0x1
 7de:	56                   	push   %esi
 7df:	57                   	push   %edi
 7e0:	e8 be fe ff ff       	call   6a3 <write>
  while(--i >= 0)
 7e5:	83 c4 10             	add    $0x10,%esp
 7e8:	39 de                	cmp    %ebx,%esi
 7ea:	75 e4                	jne    7d0 <printint+0x70>
    putc(fd, buf[i]);
}
 7ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ef:	5b                   	pop    %ebx
 7f0:	5e                   	pop    %esi
 7f1:	5f                   	pop    %edi
 7f2:	5d                   	pop    %ebp
 7f3:	c3                   	ret    
 7f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7f8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7ff:	eb 87                	jmp    788 <printint+0x28>
 801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop

00000810 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 810:	f3 0f 1e fb          	endbr32 
 814:	55                   	push   %ebp
 815:	89 e5                	mov    %esp,%ebp
 817:	57                   	push   %edi
 818:	56                   	push   %esi
 819:	53                   	push   %ebx
 81a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 81d:	8b 75 0c             	mov    0xc(%ebp),%esi
 820:	0f b6 1e             	movzbl (%esi),%ebx
 823:	84 db                	test   %bl,%bl
 825:	0f 84 b4 00 00 00    	je     8df <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
 82b:	8d 45 10             	lea    0x10(%ebp),%eax
 82e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 831:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 834:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
 836:	89 45 d0             	mov    %eax,-0x30(%ebp)
 839:	eb 33                	jmp    86e <printf+0x5e>
 83b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 83f:	90                   	nop
 840:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 843:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 848:	83 f8 25             	cmp    $0x25,%eax
 84b:	74 17                	je     864 <printf+0x54>
  write(fd, &c, 1);
 84d:	83 ec 04             	sub    $0x4,%esp
 850:	88 5d e7             	mov    %bl,-0x19(%ebp)
 853:	6a 01                	push   $0x1
 855:	57                   	push   %edi
 856:	ff 75 08             	pushl  0x8(%ebp)
 859:	e8 45 fe ff ff       	call   6a3 <write>
 85e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 861:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 864:	0f b6 1e             	movzbl (%esi),%ebx
 867:	83 c6 01             	add    $0x1,%esi
 86a:	84 db                	test   %bl,%bl
 86c:	74 71                	je     8df <printf+0xcf>
    c = fmt[i] & 0xff;
 86e:	0f be cb             	movsbl %bl,%ecx
 871:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 874:	85 d2                	test   %edx,%edx
 876:	74 c8                	je     840 <printf+0x30>
      }
    } else if(state == '%'){
 878:	83 fa 25             	cmp    $0x25,%edx
 87b:	75 e7                	jne    864 <printf+0x54>
      if(c == 'd'){
 87d:	83 f8 64             	cmp    $0x64,%eax
 880:	0f 84 9a 00 00 00    	je     920 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 886:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 88c:	83 f9 70             	cmp    $0x70,%ecx
 88f:	74 5f                	je     8f0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 891:	83 f8 73             	cmp    $0x73,%eax
 894:	0f 84 d6 00 00 00    	je     970 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 89a:	83 f8 63             	cmp    $0x63,%eax
 89d:	0f 84 8d 00 00 00    	je     930 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 8a3:	83 f8 25             	cmp    $0x25,%eax
 8a6:	0f 84 b4 00 00 00    	je     960 <printf+0x150>
  write(fd, &c, 1);
 8ac:	83 ec 04             	sub    $0x4,%esp
 8af:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8b3:	6a 01                	push   $0x1
 8b5:	57                   	push   %edi
 8b6:	ff 75 08             	pushl  0x8(%ebp)
 8b9:	e8 e5 fd ff ff       	call   6a3 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 8be:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 8c1:	83 c4 0c             	add    $0xc,%esp
 8c4:	6a 01                	push   $0x1
 8c6:	83 c6 01             	add    $0x1,%esi
 8c9:	57                   	push   %edi
 8ca:	ff 75 08             	pushl  0x8(%ebp)
 8cd:	e8 d1 fd ff ff       	call   6a3 <write>
  for(i = 0; fmt[i]; i++){
 8d2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
 8d6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
 8d9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
 8db:	84 db                	test   %bl,%bl
 8dd:	75 8f                	jne    86e <printf+0x5e>
    }
  }
}
 8df:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8e2:	5b                   	pop    %ebx
 8e3:	5e                   	pop    %esi
 8e4:	5f                   	pop    %edi
 8e5:	5d                   	pop    %ebp
 8e6:	c3                   	ret    
 8e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ee:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 8f0:	83 ec 0c             	sub    $0xc,%esp
 8f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8f8:	6a 00                	push   $0x0
 8fa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 8fd:	8b 45 08             	mov    0x8(%ebp),%eax
 900:	8b 13                	mov    (%ebx),%edx
 902:	e8 59 fe ff ff       	call   760 <printint>
        ap++;
 907:	89 d8                	mov    %ebx,%eax
 909:	83 c4 10             	add    $0x10,%esp
      state = 0;
 90c:	31 d2                	xor    %edx,%edx
        ap++;
 90e:	83 c0 04             	add    $0x4,%eax
 911:	89 45 d0             	mov    %eax,-0x30(%ebp)
 914:	e9 4b ff ff ff       	jmp    864 <printf+0x54>
 919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 920:	83 ec 0c             	sub    $0xc,%esp
 923:	b9 0a 00 00 00       	mov    $0xa,%ecx
 928:	6a 01                	push   $0x1
 92a:	eb ce                	jmp    8fa <printf+0xea>
 92c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 930:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 933:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 936:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
 938:	6a 01                	push   $0x1
        ap++;
 93a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
 93d:	57                   	push   %edi
 93e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
 941:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 944:	e8 5a fd ff ff       	call   6a3 <write>
        ap++;
 949:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 94c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 94f:	31 d2                	xor    %edx,%edx
 951:	e9 0e ff ff ff       	jmp    864 <printf+0x54>
 956:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 95d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
 960:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 963:	83 ec 04             	sub    $0x4,%esp
 966:	e9 59 ff ff ff       	jmp    8c4 <printf+0xb4>
 96b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 96f:	90                   	nop
        s = (char*)*ap;
 970:	8b 45 d0             	mov    -0x30(%ebp),%eax
 973:	8b 18                	mov    (%eax),%ebx
        ap++;
 975:	83 c0 04             	add    $0x4,%eax
 978:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 97b:	85 db                	test   %ebx,%ebx
 97d:	74 17                	je     996 <printf+0x186>
        while(*s != 0){
 97f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 982:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 984:	84 c0                	test   %al,%al
 986:	0f 84 d8 fe ff ff    	je     864 <printf+0x54>
 98c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 98f:	89 de                	mov    %ebx,%esi
 991:	8b 5d 08             	mov    0x8(%ebp),%ebx
 994:	eb 1a                	jmp    9b0 <printf+0x1a0>
          s = "(null)";
 996:	bb 20 0c 00 00       	mov    $0xc20,%ebx
        while(*s != 0){
 99b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 99e:	b8 28 00 00 00       	mov    $0x28,%eax
 9a3:	89 de                	mov    %ebx,%esi
 9a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
 9a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9af:	90                   	nop
  write(fd, &c, 1);
 9b0:	83 ec 04             	sub    $0x4,%esp
          s++;
 9b3:	83 c6 01             	add    $0x1,%esi
 9b6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9b9:	6a 01                	push   $0x1
 9bb:	57                   	push   %edi
 9bc:	53                   	push   %ebx
 9bd:	e8 e1 fc ff ff       	call   6a3 <write>
        while(*s != 0){
 9c2:	0f b6 06             	movzbl (%esi),%eax
 9c5:	83 c4 10             	add    $0x10,%esp
 9c8:	84 c0                	test   %al,%al
 9ca:	75 e4                	jne    9b0 <printf+0x1a0>
 9cc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
 9cf:	31 d2                	xor    %edx,%edx
 9d1:	e9 8e fe ff ff       	jmp    864 <printf+0x54>
 9d6:	66 90                	xchg   %ax,%ax
 9d8:	66 90                	xchg   %ax,%ax
 9da:	66 90                	xchg   %ax,%ax
 9dc:	66 90                	xchg   %ax,%ax
 9de:	66 90                	xchg   %ax,%ax

000009e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9e0:	f3 0f 1e fb          	endbr32 
 9e4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9e5:	a1 fc 0e 00 00       	mov    0xefc,%eax
{
 9ea:	89 e5                	mov    %esp,%ebp
 9ec:	57                   	push   %edi
 9ed:	56                   	push   %esi
 9ee:	53                   	push   %ebx
 9ef:	8b 5d 08             	mov    0x8(%ebp),%ebx
 9f2:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
 9f4:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9f7:	39 c8                	cmp    %ecx,%eax
 9f9:	73 15                	jae    a10 <free+0x30>
 9fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9ff:	90                   	nop
 a00:	39 d1                	cmp    %edx,%ecx
 a02:	72 14                	jb     a18 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a04:	39 d0                	cmp    %edx,%eax
 a06:	73 10                	jae    a18 <free+0x38>
{
 a08:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a0a:	8b 10                	mov    (%eax),%edx
 a0c:	39 c8                	cmp    %ecx,%eax
 a0e:	72 f0                	jb     a00 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a10:	39 d0                	cmp    %edx,%eax
 a12:	72 f4                	jb     a08 <free+0x28>
 a14:	39 d1                	cmp    %edx,%ecx
 a16:	73 f0                	jae    a08 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a18:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a1b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a1e:	39 fa                	cmp    %edi,%edx
 a20:	74 1e                	je     a40 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 a22:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 a25:	8b 50 04             	mov    0x4(%eax),%edx
 a28:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a2b:	39 f1                	cmp    %esi,%ecx
 a2d:	74 28                	je     a57 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 a2f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
 a31:	5b                   	pop    %ebx
  freep = p;
 a32:	a3 fc 0e 00 00       	mov    %eax,0xefc
}
 a37:	5e                   	pop    %esi
 a38:	5f                   	pop    %edi
 a39:	5d                   	pop    %ebp
 a3a:	c3                   	ret    
 a3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a3f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
 a40:	03 72 04             	add    0x4(%edx),%esi
 a43:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a46:	8b 10                	mov    (%eax),%edx
 a48:	8b 12                	mov    (%edx),%edx
 a4a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 a4d:	8b 50 04             	mov    0x4(%eax),%edx
 a50:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a53:	39 f1                	cmp    %esi,%ecx
 a55:	75 d8                	jne    a2f <free+0x4f>
    p->s.size += bp->s.size;
 a57:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 a5a:	a3 fc 0e 00 00       	mov    %eax,0xefc
    p->s.size += bp->s.size;
 a5f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 a62:	8b 53 f8             	mov    -0x8(%ebx),%edx
 a65:	89 10                	mov    %edx,(%eax)
}
 a67:	5b                   	pop    %ebx
 a68:	5e                   	pop    %esi
 a69:	5f                   	pop    %edi
 a6a:	5d                   	pop    %ebp
 a6b:	c3                   	ret    
 a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a70 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a70:	f3 0f 1e fb          	endbr32 
 a74:	55                   	push   %ebp
 a75:	89 e5                	mov    %esp,%ebp
 a77:	57                   	push   %edi
 a78:	56                   	push   %esi
 a79:	53                   	push   %ebx
 a7a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a7d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a80:	8b 3d fc 0e 00 00    	mov    0xefc,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a86:	8d 70 07             	lea    0x7(%eax),%esi
 a89:	c1 ee 03             	shr    $0x3,%esi
 a8c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a8f:	85 ff                	test   %edi,%edi
 a91:	0f 84 a9 00 00 00    	je     b40 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a97:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
 a99:	8b 48 04             	mov    0x4(%eax),%ecx
 a9c:	39 f1                	cmp    %esi,%ecx
 a9e:	73 6d                	jae    b0d <malloc+0x9d>
 aa0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 aa6:	bb 00 10 00 00       	mov    $0x1000,%ebx
 aab:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 aae:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
 ab5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 ab8:	eb 17                	jmp    ad1 <malloc+0x61>
 aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
 ac2:	8b 4a 04             	mov    0x4(%edx),%ecx
 ac5:	39 f1                	cmp    %esi,%ecx
 ac7:	73 4f                	jae    b18 <malloc+0xa8>
 ac9:	8b 3d fc 0e 00 00    	mov    0xefc,%edi
 acf:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ad1:	39 c7                	cmp    %eax,%edi
 ad3:	75 eb                	jne    ac0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
 ad5:	83 ec 0c             	sub    $0xc,%esp
 ad8:	ff 75 e4             	pushl  -0x1c(%ebp)
 adb:	e8 2b fc ff ff       	call   70b <sbrk>
  if(p == (char*)-1)
 ae0:	83 c4 10             	add    $0x10,%esp
 ae3:	83 f8 ff             	cmp    $0xffffffff,%eax
 ae6:	74 1b                	je     b03 <malloc+0x93>
  hp->s.size = nu;
 ae8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 aeb:	83 ec 0c             	sub    $0xc,%esp
 aee:	83 c0 08             	add    $0x8,%eax
 af1:	50                   	push   %eax
 af2:	e8 e9 fe ff ff       	call   9e0 <free>
  return freep;
 af7:	a1 fc 0e 00 00       	mov    0xefc,%eax
      if((p = morecore(nunits)) == 0)
 afc:	83 c4 10             	add    $0x10,%esp
 aff:	85 c0                	test   %eax,%eax
 b01:	75 bd                	jne    ac0 <malloc+0x50>
        return 0;
  }
}
 b03:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b06:	31 c0                	xor    %eax,%eax
}
 b08:	5b                   	pop    %ebx
 b09:	5e                   	pop    %esi
 b0a:	5f                   	pop    %edi
 b0b:	5d                   	pop    %ebp
 b0c:	c3                   	ret    
    if(p->s.size >= nunits){
 b0d:	89 c2                	mov    %eax,%edx
 b0f:	89 f8                	mov    %edi,%eax
 b11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 b18:	39 ce                	cmp    %ecx,%esi
 b1a:	74 54                	je     b70 <malloc+0x100>
        p->s.size -= nunits;
 b1c:	29 f1                	sub    %esi,%ecx
 b1e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
 b21:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
 b24:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
 b27:	a3 fc 0e 00 00       	mov    %eax,0xefc
}
 b2c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b2f:	8d 42 08             	lea    0x8(%edx),%eax
}
 b32:	5b                   	pop    %ebx
 b33:	5e                   	pop    %esi
 b34:	5f                   	pop    %edi
 b35:	5d                   	pop    %ebp
 b36:	c3                   	ret    
 b37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b3e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
 b40:	c7 05 fc 0e 00 00 00 	movl   $0xf00,0xefc
 b47:	0f 00 00 
    base.s.size = 0;
 b4a:	bf 00 0f 00 00       	mov    $0xf00,%edi
    base.s.ptr = freep = prevp = &base;
 b4f:	c7 05 00 0f 00 00 00 	movl   $0xf00,0xf00
 b56:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b59:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
 b5b:	c7 05 04 0f 00 00 00 	movl   $0x0,0xf04
 b62:	00 00 00 
    if(p->s.size >= nunits){
 b65:	e9 36 ff ff ff       	jmp    aa0 <malloc+0x30>
 b6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b70:	8b 0a                	mov    (%edx),%ecx
 b72:	89 08                	mov    %ecx,(%eax)
 b74:	eb b1                	jmp    b27 <malloc+0xb7>
