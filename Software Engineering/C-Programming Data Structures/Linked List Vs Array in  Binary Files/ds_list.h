/*
Assignment 1
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct ds_list_item_struct {
    int item;
    long next;
};

int ds_create(char *filename, long size );
int ds_init(char *filename);
long ds_malloc(long amount);
void ds_free(long start);
long ds_write(long start, void *ptr, long bytes);
void *ds_read(void *ptr, long start, long bytes);
int ds_finish();

void ds_create_list();
int ds_init_list();
int ds_replace(int value,long index);
int ds_insert(int value, long index);
int ds_read_elements( char *filename );
int ds_delete( long index );
long ds_find(int target);
int ds_swap(long index1, long index2);
int ds_finish_list();
void show_list();