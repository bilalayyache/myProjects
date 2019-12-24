/*
Assignment 1
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ds_memory.h"

void readVal();
/*Assumption: Maxblock elements is created not Maxblock-1. */
int ds_create(char *filename, long size ){
    int i = 0;
    unsigned char byte = 0;
    
    ds_file.fp = fopen(filename,"wb");
    if(ds_file.fp == NULL)
    {
        printf("Error! File Cound not be created");
        return 1;
    }/*IF file does not open send an error message and return 1*/
    
    ds_file.block[0].start = 0;
    ds_file.block[0].length = size;
    ds_file.block[0].alloced = 0;

    for(i = 1; i <= MAX_BLOCKS; i++){
        ds_file.block[i].start = 0;
        ds_file.block[i].length = 0;
        ds_file.block[i].alloced = 0;
    }

    fwrite(ds_file.block, sizeof(ds_file.block), 1 , ds_file.fp);
    
    for(i = 0; i < ((size * sizeof(int))+sizeof(long)); i++){
        fwrite(&byte, sizeof(byte) ,1, ds_file.fp);
        /*Setting and writing block*/
    }
    fclose(ds_file.fp);
    /*Close file after function applies functionality*/
    return 0;
}

int ds_init(char *filename){
    ds_file.fp = fopen(filename,"rb+");
    /*Open file and checks if null. Open in read byte write mode*/
    if (ds_file.fp==NULL)
    {
        perror("File opening error\n");
        return -1;
        exit(1);
    }

    fread(ds_file.block,sizeof(ds_file.block), 1, ds_file.fp);
    /*reads first element in the block*/    
    ds_counts.reads = 0;
    ds_counts.writes = 0;
    /*initializing reads and writes*/
    return 0;
}

long ds_malloc(long amount){
    int i = 0;

    int run1st = 1;
    int run2nd = 1;
    int firstBlockLength = 0;

    long startLoc = -1;

    for(i = 0; i <= MAX_BLOCKS; i++)
    {
        if(run1st && (ds_file.block[i].length >= amount) && (ds_file.block[i].alloced == 0)){
            
            firstBlockLength = ds_file.block[i].length;
            startLoc = ds_file.block[i].start;
            ds_file.block[i].length = amount;
            ds_file.block[i].alloced = 1;
            run1st = 0;
        }
    }/*If there is enough size for size and memory is not alloced set the block in header*/

    if(run1st == 0){
        for(i = 0; i <= MAX_BLOCKS; i++)
        {
            if(run2nd && run1st == 0 && ds_file.block[i].length == 0){
                ds_file.block[i].start = startLoc + amount;
                ds_file.block[i].length = firstBlockLength - amount;
                ds_file.block[i].alloced = 0;
                run2nd = 0;
            }   
        }/*This specific for loop sets all values in the block. If the block has a
           Lenth of 0 set the alloced to 0 and increment the start location by amount*/
        return startLoc;
    }else{
        return -1;
         /*Return -1 if operation failed(ie: memory does not have enough locations)*/
    }
}

void ds_free( long start ){
    int i;
    for(i = 0; i < MAX_BLOCKS; i++ ){
        if(ds_file.block[i].start == start){
            ds_file.block[i].alloced = 0;
        }
    }/*Frees element in a specific start location. Loops from 0 to size of max Blocks*/
}

void *ds_read(void *ptr, long start, long bytes){
    /*Compares the start with file size if larger prevent from running*/
    /*Finds the element is in array and offsets the header size*/
    ds_counts.reads++;
    /*Sets the file pointer to the memory block and offsets the header size*/
    fseek(ds_file.fp,sizeof(ds_file.block) + start , SEEK_SET);
    fread(ptr,bytes,1,ds_file.fp);

    return ptr;
}

long ds_write(long start, void *ptr, long bytes){
    /*Compares the start with file size if larger prevent from running*/
    /*writes the element is in array and offsets the header size*/
    ds_counts.writes++;
    
    fseek(ds_file.fp,sizeof(ds_file.block) + start , SEEK_SET);
    fwrite(ptr, bytes, 1, ds_file.fp);
    /*Sets the file pointer to the memory block and offsets the header size*/
    return start;
}



int ds_finish(){
    /*Writes new data into file and closes it after finishing*/
    fseek(ds_file.fp, 0 , SEEK_SET);
    fwrite(ds_file.block, sizeof(struct ds_blocks_struct), MAX_BLOCKS, ds_file.fp);
    printf("Reads: %d\n",ds_counts.reads );
    printf("Writes: %d\n",ds_counts.writes );
    
    fclose(ds_file.fp);

    return 0;
}

void readVal(){
    int i = 0;
    printf("BLOCK   Start   Length   Alloced\n");
    for(i=0;i<= 20;i++){
        printf("     %d,    %ld,     %ld,     %d\n", i, ds_file.block[i].start, ds_file.block[i].length, ds_file.block[i].alloced);
    }
    return;
}
