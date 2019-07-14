#include <stdlib.h>
#include "compareElements.h"
#include <string.h>

int compare_name_ascending ( const void *a, const void *b ){
	struct element *element_a = (struct element *)a;
	struct element *element_b = (struct element *)b;
	return strcmp(element_a->last_name, element_b->last_name);
}
