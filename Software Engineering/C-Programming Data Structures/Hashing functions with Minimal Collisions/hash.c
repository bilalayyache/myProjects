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
#include <math.h>

#include "hash.h"
#include "a4.h"
/*--------------------------------------------------------------------*/
/*--------------------------------------------------------------------*/
/*--------------------------------------------------------------------*/
int main()
{
  
  struct array *arrptr;
  struct record *r;

  collisions = 0;
  duplicates = 0;
  /*
  arrptr = read_records();
  build_hash_lastName( arrptr, 500000);
  printf( "Duplicates: %d\n", duplicates );
  printf( "Collisions: %d\n", collisions );
  r = find( "Baggett", arrptr );
  if (r==NULL)
  {
    printf( "Not found\n" );
  }
  else
  {
    printf( "%s, %s : %s : %s : %s\n", r->last_name,
                             r->first_name,
			                  r->license_no,
                    r->license_type,
                r->issue_date );
  }
  free_array_ptr( arrptr );
  */
  /*---------------------------------------------------------------------*/
  /*---------------------------------------------------------------------*/
  
  arrptr = read_records();
  /*
  build_hash_lastName( arrptr, 338839);
  printf( "Duplicates: %d\n", duplicates );
  printf( "Collisions: %d\n", collisions );*/
  
  build_hash_lastName( arrptr, 500000);
  printf( "Duplicates: %d\n", duplicates );
  printf( "Collisions: %d\n", collisions );
  /*
  build_hash_date( arrptr, 500000);
  printf( "Duplicates: %d\n", duplicates );
  printf( "Collisions: %d\n", collisions );*/
  
  r = find( "Baggett", arrptr);
  if (r==NULL)
  {
    printf( "Not found\n" );
  }
  else
  {
    printf( "%s, %s : %s : %s : %s\n", r->last_name,
                             r->first_name,
			                  r->license_no,
                    r->license_type,
                r->issue_date );
  }
  free_array_ptr( arrptr );
  

  return 0;

}
/*--------------------------------------------------------------------*/
/*--------------------------------------------------------------------*/
/*--------------------------------------------------------------------*/
void build_hash_lastName( struct array *arrptr, int hash_size )
{
  int idx, line;
  int duplicate;

  arrptr->hash_size = hash_size;
  arrptr->hash = malloc( sizeof( struct record * ) * arrptr->hash_size );

  for (idx=0;idx<arrptr->hash_size;idx++)
  {
    (arrptr->hash)[idx] = NULL;
  }

  for (line=0;line<arrptr->nelements;line++)
  {
    /*printf( "%d Adding %s\n", line, (arrptr->arr)[line].last_name );*/
    idx = hash1((arrptr->arr)[line].last_name, arrptr->hash_size);

    duplicate = 0;

    while ( (arrptr->hash)[idx]!=NULL )
    {
      if ( strcmp( ((arrptr->hash)[idx])->last_name, (arrptr->arr)[line].last_name ) == 0 )
      {
        /*printf( "  Skipping duplicate\n" );*/
	      duplicates++;
	      duplicate = 1;
	      break;
      }
      /*printf( "  collision at %d %s\n", idx, ((arrptr->hash)[idx])->last_name );*/
      collisions++;
      idx++;
      if (idx>=arrptr->hash_size)
      {
	      idx = 0;
      }
    }

    if (!duplicate)
    {
      /*printf("  inserting at %d\n", idx );*/
      (arrptr->hash)[idx] = (arrptr->arr)+line;
    }
  }
}
struct record *find( char *key, struct array *arrptr )
{
  int idx;

  idx = hash1(key, arrptr->hash_size);
  while ( (arrptr->hash)[idx] != NULL )
  {
    if ( strcmp( key, ((arrptr->hash)[idx])->last_name )==0 )
    {
      return (arrptr->hash)[idx];
    }
    idx++;

    if (idx>=(arrptr->hash_size))
    {
      idx = 0;
    }
  }
  return NULL;

}
/*-------------------------------------------------------------*/
/*-------------------------------------------------------------*/
/*-------------------------------------------------------------*/
/*License_No*/ /*29464201 Collisions - 160206 using jenking*/
void build_hash_licence( struct array *arrptr, int hash_size )
{
  int idx, line;
  int duplicate;

  arrptr->hash_size = hash_size;
  arrptr->hash = malloc( sizeof( struct record * ) * arrptr->hash_size );

  for (idx=0;idx<arrptr->hash_size;idx++)
  {
    (arrptr->hash)[idx] = NULL;
  }

  for (line=0;line<arrptr->nelements;line++)
  {
    idx = hash2(((arrptr->arr)[line].license_no), arrptr->hash_size);
    duplicate = 0;
    while ( (arrptr->hash)[idx]!=NULL )
    {
      if ( strcmp( ((arrptr->hash)[idx])->license_no,
	            (arrptr->arr)[line].license_no ) == 0 )
      {
	duplicates++;
	duplicate = 1;
	break;
      }
      collisions++;
      idx++;
      if (idx>=arrptr->hash_size)
      {
	idx = 0;
      }
      
    }
    if (!duplicate)
    {
      (arrptr->hash)[idx] = (arrptr->arr)+line;
    }
  }

}
struct record *find_licence( char *key, struct array *arrptr )
{
  int idx;

  idx = hash2(key, arrptr->hash_size );
  while ( (arrptr->hash)[idx] != NULL )
  {
    if ( strcmp( key, ((arrptr->hash)[idx])->license_no )==0 )
    {
      return (arrptr->hash)[idx];
    }
    idx++;

    if (idx>=(arrptr->hash_size))
    {
      idx = 0;
    }
  }
  return NULL;
}
/*-------------------------------------------------------------*/
/*-----------------------Issue Date----------------------------*/
/*-------------------------------------------------------------*/
void build_hash_date( struct array *arrptr, int hash_size )
{
  int idx, line;
  int duplicate;

  arrptr->hash_size = hash_size;
  arrptr->hash = malloc( sizeof( struct record * ) * arrptr->hash_size );

  for (idx=0;idx<arrptr->hash_size;idx++)
  {
    (arrptr->hash)[idx] = NULL;
  }

  for (line=0;line<arrptr->nelements;line++)
  {
    idx = hash3(((arrptr->arr)[line].issue_date), arrptr->hash_size);
    duplicate = 0;
    while ( (arrptr->hash)[idx]!=NULL )
    {
      if ( strcmp( ((arrptr->hash)[idx])->issue_date,
	            (arrptr->arr)[line].issue_date ) == 0 )
      {
	duplicates++;
	duplicate = 1;
	break;
      }
      collisions++;
      idx++;
      if (idx>=arrptr->hash_size)
      {
	idx = 0;
      }
      
    }
    if (!duplicate)
    {
      (arrptr->hash)[idx] = (arrptr->arr)+line;
    }
  }

}
struct record *find_date( char *key, struct array *arrptr )
{
  int idx;

  idx = hash3(key, arrptr->hash_size );
  while ( (arrptr->hash)[idx] != NULL )
  {
    if ( strcmp( key, ((arrptr->hash)[idx])->issue_date )==0 )
    {
      return (arrptr->hash)[idx];
    }
    idx++;

    if (idx>=(arrptr->hash_size))
    {
      idx = 0;
    }
  }
  return NULL;

}
/*-------------------------------------------------------------*/
/*-------------------------------------------------------------*/
/*-------------------------------------------------------------*/



struct array *read_records()
{
  char buffer[BUFFER_SIZE];
  char* parsedLastName;
  char* parsedFirstName;
  char* parsedLicenceNum;
  char* parsedLicenceType;
  char* parsedIssueDate;
  struct array *arrptr;
  FILE *fp;

  int line;

  arrptr = malloc( sizeof( struct array ) );
  arrptr->nelements = 0;

  
  fp = fopen( "../Professional_and_Occupational_Licensing.tsv", "r" );

  if(fp == NULL){
    printf("Error Reading the File");
    exit(1);
  }
  fgets( buffer, BUFFER_SIZE, fp );
  while (!feof(fp))
  {
    if ( fgets( buffer, BUFFER_SIZE, fp )==NULL )
    {
      break;
    }
    if ( strlen(buffer)==BUFFER_SIZE-1 )
    {
      fprintf( stderr, "Error:  BUFFER TOO SMALL\n" );
      exit(-1);
    }
    (arrptr->nelements)++;
  }
  arrptr->arr = malloc( sizeof( struct record ) * (arrptr->nelements) );
  fseek( fp, 0, SEEK_SET );
  fgets( buffer, BUFFER_SIZE, fp );
  for (line=0;line<arrptr->nelements;line++)
  {
    if(fgets( buffer, BUFFER_SIZE, fp ) != NULL){
      /*-----------------------------------------------------------------*/
      parsedLastName = get_column(buffer,1);
      if(parsedLastName == NULL){
        parsedLastName = "N/A";
        (arrptr->arr)[line].last_name = strdup(parsedLastName);
        /*printf("%s\n", parsedLastName);*/
      }else{
        (arrptr->arr)[line].last_name = strdup(parsedLastName);
        /*printf("%s\n", parsedLastName);*/
      }
      /*-----------------------------------------------------------------*/
      parsedFirstName = get_column(buffer,2);
      if(parsedFirstName == NULL){
        parsedFirstName = "N/A";
        (arrptr->arr)[line].first_name = strdup(parsedFirstName);
        /*printf("%s\n", parsedFirstName);*/
      }else{
        (arrptr->arr)[line].first_name = strdup(parsedFirstName);
        /*printf("%s\n", parsedFirstName); */
      }
      /*-----------------------------------------------------------------*/
      parsedLicenceNum = get_column(buffer,4);
      if(parsedLicenceNum == NULL){
        parsedLicenceNum = "N/A";
        (arrptr->arr)[line].license_no = strdup(parsedLicenceNum);
        /*printf("%s\n", parsedLicenceNum);*/
      }else{
        (arrptr->arr)[line].license_no = strdup(parsedLicenceNum);
        /*printf("%s\n", parsedLicenceNum);*/
      }
      /*-----------------------------------------------------------------*/
      parsedLicenceType = get_column(buffer,6);
      if(parsedLicenceType == NULL){
        parsedLicenceType = "N/A";
        (arrptr->arr)[line].license_type = strdup(parsedLicenceType);
        /*printf("%s\n", parsedLicenceType);*/
      }else{
        (arrptr->arr)[line].license_type = strdup(parsedLicenceType);
        /*printf("%s\n", parsedLicenceType);*/
      }
      /*-----------------------------------------------------------------*/
      parsedIssueDate = get_column(buffer, 11);
      if(parsedIssueDate == NULL){
        parsedIssueDate = "12/30/2025";
        (arrptr->arr)[line].issue_date = strdup(parsedIssueDate);
        /*printf("%s\n", parsedIssueDate);*/
      }else
      {
        (arrptr->arr)[line].issue_date = strdup(parsedIssueDate);
        /*printf("%s\n", parsedIssueDate);*/
      }
    }
  }
  return arrptr;
}
char* get_column(char* line, int colNum)
{
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
        return(parsedCol);
    }else
    {
      return NULL;
    }
    
    
}
char *strdup(const char *src)
{
    char *dst = malloc(strlen (src) + 1);  
    if (dst == NULL) return NULL;          
    strcpy(dst, src);                      
    return dst;                            
}







void free_array_ptr( struct array *ptr )
{
  int i;

  for (i=0;i<ptr->nelements;i++)
  {
    free( ptr->arr[i].last_name );
    free( ptr->arr[i].first_name );
    free( ptr->arr[i].license_no);
    free( ptr->arr[i].license_type );
    free( ptr->arr[i].issue_date );
  }

  free( ptr->arr );
  free( ptr->hash );

  free( ptr );
}
int char2int( unsigned char c )
{
  if ( isupper(c) )
  {
    return (int)(c - 'A');
  }
  if ( islower(c) )
  {
    return (int)(c - 'a');
  }
  return 26;
}
int str2int(char *s)
{
    char *c;
    int number = 0;
    for (c=s;(*c);c++)
    {
        number += char2int(*c);
    }
    return number;
}