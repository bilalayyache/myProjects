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

#define OUT    0 
#define IN    1 

char* get_column(char* line, int colNum){
    char* parsedCol;
    int tabNum = 0;
    int word_len = 0;
    char *start;

    if(colNum == 1){
        start = line;
        while(*line != 9){
           (line)++; 
        }
    }else{
        while (tabNum < colNum)
        {
            if(*line == 13){
                break;
            }
            else if(*line == 9){
                tabNum++;
                (line)++;
                if(tabNum == colNum-1){
                    start=line;
                }
            }else
            {
                (line)++;
            }
        }
        line--;
    }
    word_len=(line)-(start);
    if(word_len)
    {
        parsedCol=malloc(word_len+1);
        strncpy(parsedCol,start,word_len);
        parsedCol[word_len]='\0';
    }
    return(parsedCol);
}
int findWord(char* line, char* word){
    char *tmp;
    tmp = strstr(line,word);
    if (tmp != NULL){
        return 1;
    }else{
        return 0;
    }
}
char *strdup(const char *src){
    char *dst = malloc(strlen (src) + 1);  
    if (dst == NULL) return NULL;          
    strcpy(dst, src);                      
    return dst;                            
}
char* concat(const char *s1, const char *s2){
    char *result = malloc(strlen(s1) + strlen(s2) + 1);
    strcpy(result, s1);
    strcat(result, s2);
    return result;
}
int lineCounter(FILE *csvFile){
    char line[250];
    int i = 0;
    
    fseek(csvFile,0,SEEK_SET);
    fgets(line,250,csvFile);
    while(!feof(csvFile)){
        if(fgets(line,250,csvFile)== NULL){
            return i;
        }
        i++;
    }
    return i;
}
int strcmpvoid( char *a, char *b ){
  char *ptr_a, *ptr_b;  /*Declaring char pointers For STRCMP Fnction*/
  ptr_a = a;    /*Casting VOID Pointers*/
  ptr_b = b;
  return strcmp( ptr_a, ptr_b ); /*if A>B return 1 || if A == B return 0*/
}
void reverse(char *s){
    int size,x;
    char* start;
    char* end;
    char* temp;

    size = strlen(s);
    start = s;
    end = s;

    for(x = 0; x< size - 1;x++){
        end++;
    }
    for(x=0;x<size/2; x++){
        temp = *end;
        *end = *start;
        *start = temp;
        start++;
        end--;
    }
}
unsigned countWords(char *str) 
{ 
    int state = OUT; 
    unsigned wc = 0;  
    while (*str) 
    { 
        if (*str == ' ' || *str == '\n' || *str == '\t') 
            state = OUT; 
        else if (state == OUT) 
        { 
            state = IN; 
            ++wc; 
        } 
        ++str; 
    } 
  
    return wc; 
} 