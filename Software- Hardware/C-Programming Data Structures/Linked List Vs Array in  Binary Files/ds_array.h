/*
Assignment 1
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#define MAX_ELEMENTS 256

long elements;

int ds_create(char *filename, long size );
int ds_init(char *filename);
long ds_malloc(long amount);
void ds_free(long start);
long ds_write(long start, void *ptr, long bytes);
void *ds_read(void *ptr, long start, long bytes);
int ds_finish();

int ds_create_array();
int ds_init_array();
int ds_replace(int value, long index );
int ds_insert( int value, long index );
int ds_delete( long index );
int ds_swap( long index1, long index2 );
long ds_find( int target );
int ds_read_elements( char *filename );
int ds_finish_array();



