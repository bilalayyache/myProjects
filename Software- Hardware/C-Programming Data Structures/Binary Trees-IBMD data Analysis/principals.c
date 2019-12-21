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

#include "binary.h"
#include "principals.h"
#include "common.h"

struct title_principals_tree* get_principals(char *directory){
    FILE *csvFile;
    struct title_principals *titleArray;
    struct title_principals_tree *treePointer;

    int elements = 0;
    int j = 0;
    int condition = 0;
    int condition2 = 0;
    int categotyCol = 4;

    char* parsedtConst;
    char* parsednConst;
    char* parsedCharacters;
    char line[250];

    char* reversedString1 = NULL;
    char* reversedString2 = NULL;
    
    char* fileName = "/title.principals.tsv";
    char* fullPath = concat(directory,fileName);
    csvFile = fopen(fullPath, "r");

    if(csvFile == NULL){
        printf("Error Opening The File.\n");
        return 0;
    }

    elements = lineCounter(csvFile);
    titleArray = malloc(sizeof(struct title_principals) * elements);
    fseek(csvFile,0,SEEK_SET);
    fgets(line,250,csvFile);
    
    while(!feof(csvFile)){
        if(fgets(line,250,csvFile)!= NULL){
            condition = strcmp(get_column(line, categotyCol), "actor");
            condition2 = strcmp(get_column(line, categotyCol), "actress");
            if(condition == 0 || condition2 == 0){
                parsedtConst = get_column(line,1);
                parsednConst = get_column(line,3);
                parsedCharacters = get_column(line,6);
                parsedCharacters[strlen(parsedCharacters)-1] = '\0';

                reversedString1 = parsedtConst;
                reversedString2 = parsednConst;
                reverse(reversedString1);
                reverse(reversedString2);

                titleArray[j].tconst = strdup(reversedString1);
                titleArray[j].nconst = strdup(reversedString2);
                titleArray[j].characters = strdup(parsedCharacters);
                j++;
            }
        }
    }
    titleArray = realloc(titleArray, sizeof(struct title_principals) * j);
    fclose(csvFile);
    free(fullPath);

    treePointer = malloc(sizeof(struct title_principals_tree)); 
    treePointer->arrayAdress = titleArray;
    treePointer->itemCounter = j;
    treePointer->root1 = NULL;
    treePointer->root2 = NULL;


    return treePointer;
}
struct title_principals * find_tconst_tp(struct title_principals_tree *Tree, char* string){
    
    struct title_principals* result;
    
    result = malloc(sizeof(struct title_principals));
    result = (find_tconst_tpN(&(Tree->root1),string));

    return result;
}
struct title_principals * find_nconst_tp(struct title_principals_tree *Tree, char* string){
    
    struct title_principals* result;
    
    result = malloc(sizeof(struct title_principals));
    result = (find_nconst_tpN(&(Tree->root2),string));

    return result;
}