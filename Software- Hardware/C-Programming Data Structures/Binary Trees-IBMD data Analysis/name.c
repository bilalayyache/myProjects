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
#include "binary.h"
#include "common.h"

struct name_basics_tree* get_name(char *directory){
    FILE *csvFile;
    struct name_basics_tree *treePointer;
    struct name_basics *nameArray;
    int elements = 0;
    int j = 0;
    int nConstCol = 1;
    int nameColumn = 2;
    char line[250];
    char* parsednConst;
    char* parsedname;
    char* reversedString = NULL;
    
    char* fileName = "/name.basics.tsv";
    char* fullPath = concat(directory,fileName);

    csvFile = fopen(fullPath, "r");
    
    if(csvFile == NULL){
        printf("Error Opening The File.\n");
        return 0;
    }
    
    elements = lineCounter(csvFile);
    nameArray = malloc(sizeof(struct name_basics) * elements);
    fseek(csvFile,0,SEEK_SET);

    fgets(line,250,csvFile);
    while(!feof(csvFile)){
        if(fgets(line,250,csvFile)!= NULL){
            if(findWord(line, "actor") || findWord(line, "actress")){
                parsednConst = get_column(line, nConstCol);
                parsedname = get_column(line,nameColumn);
                reversedString = parsednConst;
                reverse(reversedString);
                nameArray[j].nconst = strdup(reversedString);
                nameArray[j].primaryName = strdup(parsedname);
                j++;
            }
        }    
    }
    /*nameArray[0].elementsNum = j;
    printf("BEFORE: %d\n", elements);
    printf("After: %d\n", nameArray[0].elementsNum);*/
    nameArray = realloc(nameArray, sizeof(struct name_basics) * j);
    fclose(csvFile);
    free(fullPath);
    /*----------------------------------------------------------------*/
    /*----------------------------------------------------------------*/
    /*----------------------------------------------------------------*/
    treePointer = malloc(sizeof(struct binTree)); 
    treePointer->arrayAdress = nameArray;
    treePointer->itemCounter = j;
    treePointer->root1 = NULL;
    treePointer->root2 = NULL;

    return treePointer;
}
struct name_basics * find_primary_name(struct name_basics_tree * Tree,char* string){
    
    struct name_basics* result;
    result = malloc(sizeof(struct name_basics));
    result = (find_node_name(&(Tree->root2),string));
    return result;
}
struct name_basics * find_nconst(struct name_basics_tree * Tree, char* string){
    
    struct name_basics* result;
    result = malloc(sizeof(struct name_basics));
    result = (find_nconstN(&(Tree->root1),string));
    return result;
}
