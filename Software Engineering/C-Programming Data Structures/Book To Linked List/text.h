/*
Assignment 2
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#define MAXSIZE 100

struct node_struct
{
    void *data;
    struct node_struct *next;
};

struct node_struct *txt2words(FILE *fp);

int strcmpvoid(const void *a, const void *b);
void insert_node(char *data, struct node_struct *head);
int find_node(char *search, struct node_struct *head);
struct node_struct*search( struct node_struct *list, char *target,  int(*compar)(const void*,const void*));
struct node_struct *copy( struct node_struct *start, struct node_struct *end );
void ftext( FILE *fp, struct node_struct *list );
struct node_struct *sort( struct node_struct *list, int(*compar)(const void*,const void*));
void remove_repeats(struct node_struct *list, int(*compar)(const void*,const void*));
int length( struct node_struct *list);
void free_list( struct node_struct *list, int free_data);

struct node_struct *newNode(char *string);
void printLinkedList(struct node_struct *linkedList);

int typeFinder(char **string);
char *get_word(char **string_ptr);

void mergeSort(struct node_struct** list, int(*compar)(const void*,const void*));
void splitList(struct node_struct *list,struct node_struct** start, struct node_struct **end);
struct node_struct* miniSort(struct node_struct* in1, struct node_struct* in2, int(*compar)(const void*,const void*));
void moveFunction(struct node_struct** destination, struct node_struct** list);