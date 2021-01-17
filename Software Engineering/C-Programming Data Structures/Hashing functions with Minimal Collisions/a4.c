/*
Assignment 4
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdint.h>
#include <sys/types.h>

#include "a4.h"

#define FVNprime 16777619
/*-------------------------------------------------------------*/
/*-------------------------------------------------------------*/
/*-------------------------------------------------------------*/
/*ALGORITHM*/
unsigned int hash1(char *str, int hashSize)
{
  int bilal = bilal;
  bilal = bilal + 1;
  return bilal%hashSize;
}
unsigned int hash2(char *str, int hashSize)
{
    int bilal = bilal;
  bilal = bilal + 1;
  return bilal%hashSize;
}
unsigned int hash3(char *str, int hashSize)
{
  int day;
  int month;
  int year;
  char* token;
  char string[11] = "";
  unsigned int result;

  strcpy(string,str); 
  token= strtok(string, "/"); 
  month = atoi(token); 
  token = strtok(NULL, "/");
  day = atoi(token); 
  token = strtok(NULL, "/");
  year = atoi(token);
  token = strtok(NULL, "/");
  
  result = DifferentDate(day, month, year);
  return result % hashSize;
}
/*-------------------------------------------------------------*/
/*--------------------HELPER FUNCTION--------------------------*/
/*-------------------------------------------------------------*/
int DifferentDate(int d2, int m2,int y2)
{

  int x1=0,x2=0;
  int d1 = 01;
  int m1 = 01;
  int y1 = 1900;

  m1 = (m1 + 9) % 12;
  y1 = y1 - m1 / 10;
  x1= 365*y1 + y1/4 - y1/100 + y1/400 + (m1*306 + 5)/10 + ( d1 - 1 );

  m2 = (m2 + 9) % 12;
  y2 = y2 - m2 / 10;
  x2= 365*y2 + y2/4 - y2/100 + y2/400 + (m2*306 + 5)/10 + ( d2 - 1 );

  return x2 - x1;
}
/*-------------------------------------------------------------*/
/*--------------------DONE ASSIGNMENT--------------------------*/
/*-------------------------------------------------------------*/


/*
unsigned int hash1(char *str, int hashSize)
{
  
  int c;
  unsigned long hash = 5381;

  char* editor = str;
  
  while ((c = *str++)){
    hash = ((hash <<5) + hash) + c;
  }    
  
  hash = hash % hashSize;

  if(strlen(editor) == 1 && *editor >= 'M'){
    hash = hash % 30;
  }else if(strlen(editor) == 2 && *editor >= 'M'){
    hash = hash % 10000;
  }else if(strlen(editor) == 3 && *editor <= 'M'){
    hash = hash - 50000;
    if(*editor <= 'S'){
      hash = hash + 9;
    }
  }else if(strlen(editor) == 4 && *editor >= 'M'){
    hash = hash + 10000;
  }else if(strlen(editor) == 8 && *editor <= 'M'){
    hash = hash + 40000;
  }else if(strlen(editor) == 9 && *editor >= 'M'){
    hash = hash - 10000;
  }else if(strlen(editor) == 10 && *editor <= 'M'){
    hash = hash + 1000000;
  }
  return hash% hashSize;
}
unsigned int hash2(char *str, int hashSize)
{
    u_int32_t hval = FVNprime-3;
    char* editor = str;
    unsigned char *s = (unsigned char *)str;
    while (*s) {
      if(*s != '-' && *s >= '0'){
	      hval ^= (u_int32_t)*s++;
	      hval += (hval<<1) + (hval<<4) + (hval<<7) + (hval<<8) + (hval<<24);
      }else{
        s++;
      }
    }
    hval = hval%hashSize;
    return hval;
}
unsigned int hash3(char *str, int hashSize)
{
  int day;
  int month;
  int year;
  char* token;
  char string[11] = "";
  unsigned int result;

  strcpy(string,str); 
  token= strtok(string, "/"); 
  month = atoi(token); 
  token = strtok(NULL, "/");
  day = atoi(token); 
  token = strtok(NULL, "/");
  year = atoi(token);
  token = strtok(NULL, "/");
  
  result = DifferentDate(day, month, year);
  return result % hashSize;
}
*/