/*
Assignment 3
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>


#include "name.h"
#include "title.h"
#include "binary.h"
#include "principals.h"
#include "common.h"


int main(int argc, char *argv[])
{

    char input[100];
    char* command;
    char* operator1 = NULL;
    char* operator2 = NULL;

    char* start;
    int saved1st = 0;
    int saved2nt = 0;
    int wordLength = 0;

    struct binTree *title_basics;
    struct name_basics_tree *name_basics;
    struct title_principals_tree * title_principals;

    struct title_basics *title;
    struct name_basics *name;
    struct title_principals *principals;

    if ( argc == 1 ) {
        printf( "No arguments were passed.\n" );
        return 0;
    }

    title_basics = get_title( argv[1] );
    build_ptindex( title_basics );
    build_tindex( title_basics );

    name_basics = get_name( argv[1] );
    build_pnindex( name_basics );
    build_nindex( name_basics );

    title_principals = get_principals( argv[1] );
    build_tindex_tp( title_principals );
    build_nindex_tp( title_principals );

    command = NULL;
    operator1 = NULL;
    operator2 = NULL;

    printf("> ");
    fgets(input,sizeof(input),stdin);

    command = malloc(strlen(input)+1);
    strcpy(command,input);
    command[strlen(input)-1] = '\0';

    if(countWords(command) < 2){
        printf("User should input at least 2 data information\n");
        return 0;
    }


    while (*command != '\0'){
        if(*command == ' ' && saved1st == 0){
            command++;
        }else if(*command != ' ' && saved1st == 0){
            start = command;
            saved1st = 1;
            command++;   
        }else if(*command != ' ' && saved1st == 1){
            command++;
        }else if(*command == ' ' && saved1st == 1){
            wordLength=(command)-(start);
            operator1=malloc(wordLength+1);
            strncpy(operator1,start,wordLength);
            operator1[wordLength]='\0';
            while (*command != '\0')
            {
                if(*command == ' ' && saved2nt == 0){
                    command++;
                    start = command;
                }else{
                    saved2nt = 1;
                    command++;
                }
            }
            wordLength=(command)-(start);
            operator2=malloc(wordLength+1);
            strncpy(operator2,start,wordLength);
            operator2[wordLength]='\0';
        }
    }   
    
    if ( strcmp (operator1, "name") == 0){
        /*printf("Performing operation 1\n");*/
        
        name = find_primary_name( name_basics, operator2 );
        if(name == NULL){
            printf("Name Not Found\n");
            return 0;
        }
        principals = find_nconst_tp( title_principals, name->nconst );
        if(principals == NULL){
            printf("principals Not Found\n");
            return 0;
        }
       
        title = find_tconst(title_basics, principals->tconst);
        if(title == NULL){
            printf("title Not Found\n");
            return 0;
        }
        printf( "Primary Title: %s\n", title->primaryTitle );
        /*---------------------------------------------------------------*/
        printCharactersN(name->nconst, title_principals->root2, title_basics);
        /*---------------------------------------------------------------*/
    }else if(strcmp (operator1, "title") == 0){

        /*printf("Performing operation 2\n");
        printf("Datatype Value: %s\n", operator2);*/
        
        title = find_primary_title( title_basics, operator2 );
        if(title == NULL){
            printf("title Not Found\n");
            return 0;
        }
        principals = find_tconst_tp( title_principals, title->tconst );
        if(principals == NULL){
            printf("principals Not Found\n");
            return 0;
        }
        name = find_nconst( name_basics, principals->nconst );
        if(name == NULL){
            printf("Name Not Found\n");
            return 0;
        }
        printf( "Primary Name: %s\n", name->primaryName );
        /*---------------------------------------------------------------*/
        printCharactersT(title->tconst, title_principals->root1, name_basics);
        /*---------------------------------------------------------------*/
    }else{
        printf("Invalid Operation 1 entry\n");
        return 0;
    }
    return 0;
}