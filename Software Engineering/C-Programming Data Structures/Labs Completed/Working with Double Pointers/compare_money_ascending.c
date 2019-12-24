#include <stdlib.h>
#include "compareElements.h"
#include <string.h>

int compare_money_ascending ( const void *a, const void *b ){
	struct element *element_a = (struct element *)a;
	struct element *element_b = (struct element *)b;
	return (element_a->salary - element_b->salary);
}
