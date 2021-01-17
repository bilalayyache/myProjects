/*
Assignment 1
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ds_array.h"
/*This function will create the array and set the size to o*/
/*
ASSUMPTIONS: When asked to insert, if an item exits there already 
             replace it. This is how arrays work. 
             WHEN MAXELEMENT IS 256 THAT CREATES 253  INDEXES(TWO GETS USED BY SIZE). THE ASSUMPTION WAS MADE
             THAT THIS MAX ELEMENT WILL BE MULTIPLIED BY SIZEOF(INT)BEFORE INPUTTING INTO
             THE DS_CREATE. THE REASON I DID NOT PLAY WITH THAT IS BECAUSE I DID NOT UNDERSTAND 
             IF THAT IS WHAT HE ASKED FOR. I FOLLOWED THE TESTING HE DID AND EVERYTHING WAS WORKING
             DS_read will 
             This program can 

*/
int ds_create_array(){
    char fileNameArray[] = "array.bin" ;
    elements = 0;
    /*Initializing the file in the main for the array*/
    ds_init(fileNameArray);
    ds_malloc(sizeof(long));
    /*Setting size element to 0*/
    ds_write(0, &elements, sizeof(long));
    /*Creating space for the size element in the header file*/
    ds_malloc(MAX_ELEMENTS * sizeof(int)); /* hhhhh */
    ds_finish();
    /*Error check is embedded in the memory.c file. No need to run error check here*/
    return 0;
}
/*This function will intialize the array by reading the first element in the block*/
int ds_init_array(){
    char fileNameArray[] = "array.bin" ;
    ds_init(fileNameArray);
    ds_read(&elements, 0, sizeof(long));
    return 0;
}
/*This function will utilize the ds_write to replace the value given in the index*/
int ds_replace(int value, long index ){
    if(ds_write(sizeof(long) + (index * sizeof(int)), &value , sizeof(int)) == -1){
        return -1;
    }
    return 0;
}
/*this function will insert the value into a specific index and push everything forward*/
int ds_insert( int value, long index ){
    /*store content at given index in file in temp var using ds read and write*/
    int x = 0;
    int temp = 0;
    int temp2 = 0;

    if(index > MAX_ELEMENTS){
        printf("Invalid input to ds_insert\n");
    }

    ds_read(&temp2, sizeof(long) + (index*sizeof(int)), sizeof(int));

    ds_replace(value, index);
    /* insert value stored in temp var into next index */
    for(x = MAX_ELEMENTS-sizeof(int); x >= index ; x--){
        if(x != index){
            ds_read(&temp, sizeof(long)+(x*sizeof(int)), sizeof(int));
            ds_replace(temp,x+1);
        }else{
            ds_replace(temp2,x+1);
        }
    }
    /*increment elements*/
    elements++;
    /*should be able to insert new element at end of array (index == elements)*/
    /*No need to check for errors because it is covered in the previous func*/
    return 0;
}
/*This function deletes an element and resuces the size of element*/
int ds_delete( long index ){

    int i = 0;
    int temp = 0;
    /*Check For Error*/
    if(index > MAX_ELEMENTS){
        printf("Index in delete Does Not exist!\n");
        return -1;
    }
    
    for(i=index;i<=MAX_ELEMENTS - 4;i++){
        if(i!=MAX_ELEMENTS){
            ds_read(&temp,sizeof(long)+((i+1)*sizeof(int)), sizeof(int));
            ds_replace(temp,i);
        }else{
            ds_replace(0,i);
            elements--;
        }
    }

    return 0;
}
/*This function will swap index 1 with index 2*/
int ds_swap( long index1, long index2 ){
    int temp1;
    int temp2;
    /*Error checking*/
    if(index1 > MAX_ELEMENTS || index2>MAX_ELEMENTS){
        printf("Index into swap is invalid");
        return -1;
    }
    /*Use temp integers to save previous index*/
    ds_read(&temp1,sizeof(long)+(index1*sizeof(int)), sizeof(int));
    ds_read(&temp2,sizeof(long)+(index2*sizeof(int)), sizeof(int));
    /*Indexes are replaced here!*/
    ds_replace(temp1,index2);
    ds_replace(temp2,index1);
    return 0;
}
/*Function finds a value*/
long ds_find( int target ){
    int i = 0;
    int temp = 0;
    /*Loops through elements*/
    for(i=0;i<MAX_ELEMENTS-sizeof(int);i++){
        ds_read(&temp,sizeof(long)+(i*sizeof(int)),sizeof(int));
        if(target == temp){
            return (i);
        }
    }
    return -1;
}
/*Reads Elements from file*/
int ds_read_elements( char *filename ){
    int i = 0;
    int value = 0;

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
/*Calls the finish function and writes the array values*/
int ds_finish_array(){
    ds_write(0,&elements,sizeof(long));
    ds_finish();
    return 0;
}
/*MAX ELEMENTS CHANGED TO ELEMENT -1*/