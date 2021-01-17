#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ds_array.h"

int main(){

    int i = 0;
    
    ds_create("array.bin",10256);
    ds_create_array();
    ds_init_array();
    
    ds_read_elements("arrayTest.txt"); /*Inserting test*/;

    
    for(i=0;i<9;i++){
        ds_swap(i,i+1);
    }
    ds_finish_array();
    return 0;
}