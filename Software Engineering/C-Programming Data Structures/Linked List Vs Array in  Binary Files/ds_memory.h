/*
Assignment 1
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_BLOCKS 4096

struct ds_counts_struct{
    int reads;
    int writes;
};

struct ds_blocks_struct{
    long start;
    long length;
    char alloced;
};

struct ds_file_struct{
    FILE *fp;
    struct ds_blocks_struct block[MAX_BLOCKS];    
};

struct ds_file_struct ds_file;
struct ds_counts_struct ds_counts;
struct ds_blocks_struct ds_blocks;

void readVal();
long int findSize();