#include <stdlib.h>
#include "compareElements.h"
#include <string.h>

int compare_money_descending ( const void *a, const void *b ){
	struct element *element_a = (struct element *)a;
	struct element *element_b = (struct element *)b;
	return (element_b->salary - element_a->salary);
}
