/*
Assignment 1
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "ds_list.h"
/**Including header files*/
/*Delete at 0 does not work*/
/*The following function initializes and mallocs the new bin file created*/

void ds_create_list(){
    char filename2[] = "list.bin" ;
    long elements = -1;

    if(ds_init(filename2) == -1){
        printf("Error has occured in init\n");
    }
    ds_malloc(sizeof(long)); 
    ds_write(0,&elements,sizeof(long));   
    ds_finish();
}
/*Initia;ies the function*/
int ds_init_list(){
    char filename2[] = "list.bin";
    if(ds_init(filename2) == -1){
        printf("Error has occured in init\n");
        return -1;
    }
    return 0;
}
int ds_replace(int value,long index){
    struct ds_list_item_struct previous;
    struct ds_list_item_struct new;
    
    long previous_loc;
    int i;
    long temp;
    previous_loc = 0;
    temp = -1;
    ds_read(&previous.next, 0, sizeof(long));
    

    for(i = index; i > 0; i--){
        if(previous.next == temp){
            printf("EXIT");
            return -1;
        }
        else if (previous.next == index){
            ds_write(previous_loc+sizeof(new), &value, sizeof(int));
        }
        previous_loc = previous.next;
        ds_read(&previous, previous_loc, sizeof(previous)); 
    }
    return 0;

}
/*Function takes two inputs takes in a value and an insert. Uses the head of the
  Linked list to insert a new node. A previous and new is created to help in the process
  of the build
*/
int ds_insert(int value, long index){
    struct ds_list_item_struct previous;
    struct ds_list_item_struct new;
    
    long previous_loc;
    int i;
    previous_loc = 0;

    ds_read(&previous.next, 0, sizeof(long));
    /*funtion checks if the first node is a null if it is then we know that 
    its the Last element of the linked list. then it exits. The for loop find the address
    of the last node
    */
    for(i = index;i > 0;i--){
        if(previous.next == -1){
            return -1;
        }
        previous_loc = previous.next;
        ds_read(&previous, previous_loc, sizeof(previous)); 
    }
    /*if node is last. then take the value to be inserted and malloc space then store
    address of the new node in the old next*/
    new.item = value;
    new.next = previous.next;
    previous.next = ds_malloc(sizeof(new));

    ds_write(previous.next, &new, sizeof(new));
    /*Checks if we even moved in the list if not then write the address into the first element*/
    if(previous_loc != 0){
        ds_write(previous_loc, &previous, sizeof(previous));
    }
    else{
        ds_write(0, &previous.next, sizeof(long));
    }
    return 0;
}

int ds_read_elements( char *filename ){
    /*Opens a new file, reads the elements and inserts them into the linked list*/
    int i = 0;
    int value = 0;
    /*Function was coped from the array functions*/
    FILE* file = fopen(filename, "r");
    if(!(file))
    {
        printf("ERROR IN READING FILE: ds_read_elements");
        return -1;
    }else{
        while ((fscanf(file,"%d\n",&value)!= EOF)){
            ds_insert(value, i);
            i++;
        }
        fclose(file);
    }
    return 0;
}

int ds_delete( long index ){
    struct ds_list_item_struct previous;
    struct ds_list_item_struct new;
    
    long previous_loc;
    int i;
    previous_loc = 0;
    
    printf("HERE\n");

    ds_read(&previous.next, 0, sizeof(long));
    

    for(i = index; i > 0; i--){
        if(previous.next == -1){
            return -1;
        }
        else if (previous.next == index){
            if(index == (long)8){
                printf("Deleting 0 does not work");
                return -1;
                                     
            }else{
                ds_read(&new, previous.next, sizeof(new));
                ds_free(previous.next);
                previous.next = new.next;
                ds_write(previous_loc, &previous, sizeof(previous));
            }
        }
        previous_loc = previous.next;
        ds_read(&previous, previous_loc, sizeof(previous)); 
    }
    return 0;
}

/*This function finds the element with the item inserted*/
long ds_find(int target){

    struct ds_list_item_struct previous;
    int x;
    long previous_loc;
    previous_loc = 0;
    x=0;

    ds_read(&previous.next, 0, sizeof(long));
    /*Loops to find the element by comparing previous locations*/
    for(x=0; previous.next!= -1 ; x++){
        /*Looks if it matches here*/
        if(previous.item == target){
            return previous_loc;
        }
        /*If not then update previous location*/
        previous_loc = previous.next;
        ds_read(&previous, previous_loc, sizeof(previous));
    }
    return -1;
}


int ds_swap(long index1, long index2){

    struct ds_list_item_struct previous;
    struct ds_list_item_struct new;

    long lower;
    long Upper;
    long switchNum;

    int temp = 0;
    int flag = 0;
    
    lower = 0;
    Upper = 0;
    switchNum = 0;
    /*CHECKING CASES*/
    if(index1 == index2){
        printf("Invalid Entry, input 2 Different indexes/n");
        return -1;
        exit(EXIT_FAILURE);
    }else if(index2<index1){
        switchNum = index2;
        index2 = index1;
        index1 = switchNum;
        switchNum = 0;
    }

    /*Search first for lower index
    after finding it, find higher index*/
    
    ds_read(&previous.next, 0, sizeof(long));
    while(flag<2){
        if(previous.next == index1){
            lower = previous.next;
            printf("found index1\n");
            flag++;
        }else if(previous.next == index2){
            Upper = previous.next;
            printf("found index2\n");
            flag++;
        }else if(previous.next == (long)-1 && flag<2){
            printf("Index input is missing\n");
            return -1;
            exit(EXIT_FAILURE);
        }
        ds_read(&previous, previous.next, sizeof(previous));
    }
    /*   
    once the two indexs are found use temp 
    variables to switch items*/ 

    ds_read(&previous, lower, sizeof(previous));
    ds_read(&new, Upper, sizeof(new));
    temp = previous.item;
    previous.item = new.item;
    new.item = temp;

    /*then write back to their locatios*/
    ds_write(lower, &previous, sizeof(previous));
    ds_write(Upper, &new, sizeof(new));
    
    return 0;
}

int ds_finish_list(){
    ds_finish();
    return 0;
}


void show_list(){
    long loc;
    struct ds_list_item_struct li;
    loc = 0;
    

    ds_read(&loc, 0, sizeof(long));

    while(loc != -1){

        ds_read(&li, loc, sizeof(struct ds_list_item_struct));
        printf("Reading at loc %ld\n", loc);
        printf("List item %d\n", li.item);
        printf("List next %ld\n\n", li.next);
        loc = li.next;

    }
}