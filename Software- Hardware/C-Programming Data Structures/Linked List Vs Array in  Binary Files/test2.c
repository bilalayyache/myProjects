#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ds_list.h"

int main(){
    int i = 0;
    int control = 100;
    
    ds_create("list.bin",10254);
    ds_create_list();
    ds_init_list();
    for(i=0;i<control;i++){
        ds_insert(i,i);
    }
    for(i=0;i<control;i++){
        ds_delete(i);
    }
    ds_finish_list();

    return 0;
}