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

#include "title.h"
#include "common.h"
#include "binary.h"
/*-------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------*/
struct binTree * get_title(char *directory){
    FILE *csvFile;
    struct binTree *treePointer;
    struct title_basics *titleArray;


    int elements = 0;
    int j = 0;
    int tConstCol = 1;
    int titleColumn = 3;
    int condition1 = 0;
    int condition2 = 0;

    char line[250];
    char* parsedtConst;
    char* parsedTitle;
    char* fileName = "/title.basics.tsv";
    char* fullPath = concat(directory,fileName);
    char* reversedString = NULL;
    
    csvFile = fopen(fullPath, "r");
    if(csvFile == NULL){
        printf("Error Opening The File.\n");
        return 0;
    }
    elements = lineCounter(csvFile);
    titleArray = malloc(sizeof(struct title_basics) * elements);
    fseek(csvFile,0,SEEK_SET);
    fgets(line,250,csvFile);
    
    while(!feof(csvFile)){
        if(fgets(line,250,csvFile)!= NULL){
            
            condition1 = strcmp(get_column(line, 2), "movie");
            condition2 = strcmp(get_column(line, 5), "0");
    
            if(condition1 == 0 && condition2==0){
                parsedtConst = get_column(line, tConstCol);
                parsedTitle = get_column(line,titleColumn);
                reversedString = parsedtConst;
                reverse(reversedString);
                titleArray[j].tconst = strdup(reversedString);
                titleArray[j].primaryTitle = strdup(parsedTitle);
                j++;
            }
        }
    }
    titleArray = realloc(titleArray, sizeof(struct title_basics) * j);
    fclose(csvFile);
    free(fullPath);
    /*----------------------------------------------------------------*/
    /*----------------------------------------------------------------*/
    /*----------------------------------------------------------------*/
    treePointer = malloc(sizeof(struct binTree)); 
    treePointer->arrayAdress = titleArray;
    treePointer->itemCounter = j;
    treePointer->root1 = NULL;
    treePointer->root2 = NULL;

    return treePointer;
}
struct title_basics * find_primary_title(struct binTree *Tree,char* string){
    
    struct title_basics* result;
    
    result = malloc(sizeof(struct title_basics));
    result = (find_node(&(Tree->root2),string));


    return result;
}
struct title_basics * find_tconst(struct binTree *Tree,char* string){
    
    struct title_basics* result;
    
    result = malloc(sizeof(struct title_basics));
    result = (find_tconstN(&(Tree->root1),string));


    return result;
}
/*-------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------*/


