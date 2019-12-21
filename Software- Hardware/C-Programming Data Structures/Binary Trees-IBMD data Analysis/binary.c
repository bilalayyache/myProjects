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
#include "common.h"
#include "title.h"
#include "name.h"


void build_ptindex(struct binTree *Tree){
    int i = 0;
    struct title_basics *titleArray;
    titleArray = Tree->arrayAdress;
    while(i < Tree->itemCounter){
        /*printf("%d times\n", i+1);*/
        add_node(&(Tree->root2),titleArray[i].primaryTitle, &titleArray[i]);    
        i++;
    }
}
void build_tindex(struct binTree *Tree){
    int i = 0;
    struct title_basics *titleArray;
    titleArray = Tree->arrayAdress;
    while(i < Tree->itemCounter){
        /*printf("%d times\n", i+1);*/
        add_node(&(Tree->root1),titleArray[i].tconst, &titleArray[i]); 
        i++;
    }
}

/*HELPER FUNCTIONS*/
void add_node(struct binTreeNode **rootNum, char* string, struct title_basics *value){
    int i = 0;

    if((*rootNum) == NULL){
        *rootNum = malloc(sizeof(struct binTreeNode));
        (*rootNum)->key = string;
        (*rootNum)->data = value;
        (*rootNum)->left = NULL;
        (*rootNum)->right= NULL;
        /*printf("saving: %s\n", string);*/
    }else{
        if(strcmp((*rootNum)->key,string) >= 0){
            /*printf("Saving in Left: %s\n", string);*/
            add_node(&((*rootNum))->left,string,value);
            i++;
        }else{
            /*printf("Saving in right: %s\n", string);*/
            add_node(&((*rootNum))->right,string,value);
            i++;
        }
    }
}
struct title_basics * find_node( TreeNode **rootNum, char* string ){

    if((*rootNum) == NULL){
        return NULL;
        printf("NULL IN FIND\n");
    }else{
        /*printf("Comparing %s with %s\n", (*rootNum)->key,string);*/
        if(strcmp((*rootNum)->data->primaryTitle,string) < 0){
            *rootNum = (*rootNum)->right;
            /*printf("Not Found in right\n");*/
            find_node(rootNum, string);
        }else if(strcmp((*rootNum)->data->primaryTitle,string) > 0){
            *rootNum = (*rootNum)->left;
            /*printf("Not Found in left\n");*/
            find_node(rootNum, string);
        }else{
            
            
        }
        return (*rootNum)->data;
    }
    return NULL; /*Changes Made here*/
}
struct title_basics * find_tconstN( TreeNode **rootNum, char* string ){

    if((*rootNum) == NULL){
        return NULL;
        printf("NULL IN FIND\n");
    }else{
        
        if(strcmp((*rootNum)->data->tconst,string) < 0){
            *rootNum = (*rootNum)->right;
            
            find_tconstN(rootNum, string);
        }else if(strcmp((*rootNum)->data->tconst,string) > 0){
            *rootNum = (*rootNum)->left;
            
            find_tconstN(rootNum, string);
        }else{
              
        }
        return (*rootNum)->data;
    }
    return NULL; /*Changes made here*/
}
/*----------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------*/
void build_pnindex(struct name_basics_tree *Tree){
    int i = 0;
    struct name_basics *titleArray;
    titleArray = Tree->arrayAdress;
    while(i < Tree->itemCounter){
        /*printf("%d times\n", i+1);*/
        add_node_name(&(Tree->root2),titleArray[i].primaryName, &titleArray[i]);    
        i++;
    }
}
void build_nindex(struct name_basics_tree *Tree){
    int i = 0;
    struct name_basics *titleArray;
    titleArray = Tree->arrayAdress;
    while(i < Tree->itemCounter){
        /*printf("%d times\n", i+1);*/
        add_node_name(&(Tree->root1),titleArray[i].nconst, &titleArray[i]);    
        i++;
    }
}

/*HELPER FUNCTIONS*/
void add_node_name(struct name_basics_node **rootNum, char* string, struct name_basics *value){
    int i = 0;

    if((*rootNum) == NULL){
        *rootNum = malloc(sizeof(struct name_basics_node));
        (*rootNum)->key = string;
        (*rootNum)->data = value;
        (*rootNum)->left = NULL;
        (*rootNum)->right= NULL;
        /*printf("saving: %s\n", string);*/
    }else{
        if(strcmp((*rootNum)->key,string) >= 0){
            /*printf("Saving in Left: %s\n", string);*/
            add_node_name(&((*rootNum))->left,string,value);
            i++;
        }else{
            /*printf("Saving in right: %s\n", string);*/
            add_node_name(&((*rootNum))->right,string,value);
            i++;
        }
    }
}
struct name_basics * find_node_name( struct name_basics_node **rootNum, char* string ){

    if((*rootNum) == NULL){
        return NULL;
        printf("NULL IN FIND\n");
    }else{
        
        if(strcmp((*rootNum)->data->primaryName,string) < 0){
            *rootNum = (*rootNum)->right;
            
            find_node_name(rootNum, string);
        }else if(strcmp((*rootNum)->data->primaryName,string) > 0){
            *rootNum = (*rootNum)->left;
            
            find_node_name(rootNum, string);
        }else{
           
            
        }
        return (*rootNum)->data;
    }
    return NULL;
}
struct name_basics * find_nconstN( struct name_basics_node **rootNum, char* string ){

    if((*rootNum) == NULL){
        return NULL;
        printf("NULL IN FIND\n");
    }else{
        
        if(strcmp((*rootNum)->data->nconst,string) < 0){
            *rootNum = (*rootNum)->right;
            
            find_nconstN(rootNum, string);
        }else if(strcmp((*rootNum)->data->nconst,string) > 0){
            *rootNum = (*rootNum)->left;
            
            find_nconstN(rootNum, string);
        }else{
            
            
        }
        return (*rootNum)->data;
    }
    return NULL;
}

/*----------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------*/

void build_tindex_tp(struct title_principals_tree *Tree){
    int i = 0;
    struct title_principals *titleArray;
    titleArray = Tree->arrayAdress;
    while(i < Tree->itemCounter){
        /*printf("%d times\n", i+1);*/
        add_node_principals(&(Tree->root1),titleArray[i].tconst, &titleArray[i]);    
        i++;
    }
}
void build_nindex_tp(struct title_principals_tree *Tree){
    int i = 0;
    struct title_principals *titleArray;
    titleArray = Tree->arrayAdress;
    while(i < Tree->itemCounter){
        /*printf("%d times\n", i+1);*/
        add_node_principals(&(Tree->root2),titleArray[i].nconst, &titleArray[i]);    
        i++;
    }
}

/*HELPER FUNCTIONS*/
void add_node_principals(struct title_principals_node **rootNum, char* string, struct title_principals *value){
    int i = 0;

    if((*rootNum) == NULL){
        *rootNum = malloc(sizeof(struct title_principals_node));
        (*rootNum)->key = string;
        (*rootNum)->data = value;
        (*rootNum)->left = NULL;
        (*rootNum)->right= NULL;
    }else{
        if(strcmp((*rootNum)->key,string) >= 0){
            add_node_principals(&((*rootNum))->left,string,value);
            i++;
        }else{
            add_node_principals(&((*rootNum))->right,string,value);
            i++;
        }
    }
}
struct title_principals * find_tconst_tpN( struct title_principals_node **rootNum, char* string ){

    if((*rootNum) == NULL){
        return NULL;
        printf("NULL IN FIND\n");
    }else{
        if(strcmp((*rootNum)->data->tconst,string) < 0){
            *rootNum = (*rootNum)->right;
            find_tconst_tpN(rootNum, string);
        }else if(strcmp((*rootNum)->data->tconst,string) > 0){
            *rootNum = (*rootNum)->left;
            find_tconst_tpN(rootNum, string);
        }else{

        }
        return (*rootNum)->data;
    }
    return NULL;
}
struct title_principals * find_nconst_tpN( struct title_principals_node **rootNum, char* string ){

    if((*rootNum) == NULL){
        return NULL;
        printf("NULL IN FIND\n");
    }else{
        if(strcmp((*rootNum)->data->nconst,string) < 0){
            *rootNum = (*rootNum)->right;
            find_nconst_tpN(rootNum, string);
        }else if(strcmp((*rootNum)->data->nconst,string) > 0){
            *rootNum = (*rootNum)->left;
            find_nconst_tpN(rootNum, string);
        }else{
            
        }
        return (*rootNum)->data;
    }
    return NULL;
}
/*----------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------------------------*/
void printCharactersT(char* ttValue,struct title_principals_node *root ,struct name_basics_tree *nameTree){
    struct name_basics *name;
    if (root == NULL){ 
        return; 
    }
    if(strcmp(root->data->tconst,ttValue) == 0){
        name = find_nconst(nameTree,root->data->nconst);
        printf("%s as %s\n", name->primaryName, root->data->characters);
    }  
    printCharactersT(ttValue,root->left,nameTree);
}
void printCharactersN(char* nmValue,struct title_principals_node *root ,struct binTree *titleTree){
    struct title_basics *title;
    if (root == NULL){ 
        return; 
    }
    if(strcmp(root->data->nconst,nmValue) == 0){
        title = find_tconst(titleTree,root->data->tconst);
        printf("Appears in %s as %s\n", title->primaryTitle, root->data->characters);
    }  
    printCharactersN(nmValue,root->left,titleTree);
}
/*----------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------------------------*/
void print2DUtil(title_principalsNode *root, int space) 
{ 
    int i = 0;

    if (root == NULL){
        printf("Empty Node\n"); 
        return; 
    }
    space += 8; 
    /*print2DUtil(root->right, space); */
    printf("\n"); 
    for (i = 0 ; i < space; i++) 
        printf(" "); 
    printf("%s\n", root->key);  
    print2DUtil(root->left, space); 
} 
void print2D(title_principalsNode *root)
{ 
   print2DUtil(root, 0); 
} 