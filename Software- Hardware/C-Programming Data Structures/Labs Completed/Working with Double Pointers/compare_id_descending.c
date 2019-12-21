#include <stdlib.h>
#include "compareElements.h"
#include <string.h>

int compare_id_descending ( const void * a, const void *b ){
	struct element *element_a = (struct element *)a;
        struct element *element_b = (struct element *)b;
	return (element_b->id_number - element_a->id_number);
}
