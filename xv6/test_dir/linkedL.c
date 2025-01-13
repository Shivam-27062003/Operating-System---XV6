#include "linkedL.h"
// #include "types.h"
#include <stdlib.h>
#include <stdio.h>

// extern void* malloc(uint nbytes);

void addNode(void* data,struct LinkedList *List){
    struct NODE* node = new struct NODE;  
    node->data = data;
    node->next = 0;
    if(List->head==0){
        List->head = node;
        List->tail = node;
    }
    else{
        List->tail->next = node;
        List->tail = List->tail->next;
    }
}

void* front(struct LinkedList* List){
    if(List->head==0)return 0;
    void* data = List->head->data;
    List->head = List->head->next;
    return data;
}

int main(){
    int str = 5;
    void* data = &str;
    struct LinkedList *List = new struct LinkedList;
    addNode(data,List);
    int b = 27;
    data = &b;
    addNode(data,List);
    data = front(List);
    printf("%d\n",*(int*)data);
    data = front(List);
    printf("%d\n",*(int*)data);
    if(List->head==0)printf("%d\n",1);
    return 0;
}