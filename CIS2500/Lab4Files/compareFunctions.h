#include <stdlib.h>
#include "compareElements.h"
#include <string.h>

int compare_id_ascending ( const void * a, const void *b ){
	struct element *element_a = (struct element *)a;
	struct element *element_b = (struct element *)b;
	return (element_a->id_number - element_b->id_number);
}
int compare_id_descending ( const void * a, const void *b ){
	struct element *element_a = (struct element *)a;
        struct element *element_b = (struct element *)b;
	return (element_b->id_number - element_a->id_number);
}
int compare_name_ascending ( const void *a, const void *b ){
	struct element *element_a = (struct element *)a;
	struct element *element_b = (struct element *)b;
	return strcmp(element_a->last_name, element_b->last_name);
}
int compare_name_descending ( const void *a, const void *b ){
	struct element *element_a = (struct element *)a;
	struct element *element_b = (struct element *)b;
	return strcmp(element_b->last_name, element_a->last_name);
}

int compare_money_ascending ( const void *a, const void *b ){
	struct element *element_a = (struct element *)a;
	struct element *element_b = (struct element *)b;
	return (element_a->salary - element_b->salary);
}

int compare_money_descending ( const void *a, const void *b ){
	struct element *element_a = (struct element *)a;
	struct element *element_b = (struct element *)b;
	return (element_b->salary - element_a->salary);
}

