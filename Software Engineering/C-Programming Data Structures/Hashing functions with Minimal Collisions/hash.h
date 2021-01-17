/*
Assignment 4
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/

#define BUFFER_SIZE	1024

struct record
{
  char *last_name;
  char *first_name;
  char *license_no;
  char *license_type;
  char *issue_date;
};

struct array
{
  struct record *arr;
  int nelements;
  struct record **hash;
  int hash_size;
};

int collisions;
int duplicates;

struct array *read_records();
void free_array_ptr( struct array *ptr );
char* get_column(char* line, int colNum);
char *strdup(const char *src);
int str2int(char *s);
int char2int( unsigned char c );
/*BUILDING HASHES*/
void build_hash_lastName( struct array *arrptr, int hash_size );
void build_hash_licence( struct array *arrptr, int hash_size );
void build_hash_date( struct array *arrptr, int hash_size );
/*FINDING INPUTS*/
struct record *find( char *key, struct array *arrptr );
struct record *find_licence( char *key, struct array *arrptr );
struct record *find_date( char *key, struct array *arrptr );