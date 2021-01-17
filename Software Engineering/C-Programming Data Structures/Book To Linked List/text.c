/*
Assignment 2
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "text.h"
#include <assert.h>
/*
    ASSUMPTIONS:
    * When dealing with search, error handling will be taken care of in the
    main if only 1 unique element is being searched for. This is due to accessing
    memory that does not exist.
    * For ftext, the format used was the format understood from the assignment 
    description.
    * Using free memory frees all variables used but program does encounter memory
    leakage. This analysis was encountered while using valgrind. This is due to data
    being replaced or pushed.
    Double qoutes is " as the original double qoute is not recognised as an ASCII Value.
    * Local variable flagEnabled is assumed to be allowed as no resitriction stated in 
    assignment description
    * ALL functions are complete and are completely functional.
    * The merge function algorithm used was inspired from the C Programming text
*/
const int STEPSIZE = 100; /*Used to increment dynamic memory needed to store information*/
int flagEnable = 0; /*Flag used for TypeFinder to be able to identify -- */

/*TESTING MAIN FUNCTION*/
/******************************************************************/
/****************************************************************/
int main(){
    FILE *fp;
    struct node_struct *head,*number1,*chapter1,*number2,*chapter2;
    struct node_struct *sptr;
    struct node_struct *copy_of_chapter1;
    struct node_struct *sortedList;
    
    fp = fopen("1342-0.txt","r");
    head = txt2words(fp);
    
    fclose(fp);
    
    sptr = search( head, "Chapter",strcmpvoid);
    

   
    printf("%p\n", (void *)sptr);
    chapter1 = sptr->data;
    printf( "%p\n", (void *)(chapter1) );
    printf( "%s\n", (char *)(chapter1->data) );
    
    number1 = chapter1->next;
    printf( "%p\n", (void *)(number1) );
    printf( "%s\n", (char *)(number1->data) );


    chapter2 = ((struct node_struct *)(sptr->next))->data;
    printf( "%p\n", (void *)(chapter2) );
    printf( "%s\n", (char *)(chapter2->data) );

    number2 = chapter2->next;
    printf( "%p\n", (void *)(number2) );
    printf( "%s\n", (char *)(number2->data) );
 

    copy_of_chapter1 = copy(chapter1,chapter2);

    sortedList = sort(copy_of_chapter1, strcmpvoid);
    remove_repeats(sortedList,strcmpvoid);
    printLinkedList(sortedList);

    printf("LENGTH OF Sorted LINKED LIST: %d\n", length(head));
    ftext(fp, head);

    free_list(head,1);
    free_list(copy_of_chapter1,1);
    free_list(sortedList,1);
    

    return 0;   
}
/****************************************************************/
/*
  The Txt2Words function converts the file pointer to words using getWord
  and stores the words in a linked list.
  The Txt2Words uses two functions:
  getWord: Scans line inserted as a double pointer and splits the words
  then identifies the word using typeFinder
  typeFinder: Type finder identifies the word as type 1, 2 or 3.
*/
/******************************************************************/
struct node_struct *txt2words( FILE *fp ){
    /*VARIABLES FOR CREATING A DYNAMIC MEMORY*/
    char inputStr[MAXSIZE+1];
    char **lines = NULL;
    char **newlines;
    char *string;
    char *data;
    /*char *newLineChar = "\n";*/

    int stringLength;
    int index = 0;
    int i = 0;
    int on = 0;
    int arrlen = 0;
    /*SETTING UP NODES*/
    struct node_struct* head = NULL;

    if(!(fp))
    {
        printf("ERROR IN twt2words\n");
        return NULL;
    }else{
        /*Memory Allocation*/
        while (fgets(inputStr, MAXSIZE, fp))
        {
            /*Malloc size for newLines. 1st entry has a NULL value of lines*/
            if(index == arrlen){
                arrlen += STEPSIZE;
                newlines = realloc(lines, arrlen*sizeof(char *));
                if(!newlines){ /*Error Checking */
                    printf("Cant Realloc\n");
                    return NULL;
                }
                lines = newlines;
            }

            inputStr[strlen(inputStr)-1] = '\0';
            stringLength = strlen(inputStr);
            /*Storing string in Lines*/
            string = (char *)malloc((stringLength + 1) * sizeof(char));
            strcpy(string, inputStr);
            lines[index] = string;
            index++; /*Incrementing lines*/
        }
    /*DYNAMIC MEMORY CREATED. STARTING LINKED LIST SETUP*/
        for (i = 0; i < index; i++)
        {
            /*Using word to get word*/

            data = get_word(lines+i);
            if (i == 0 && on == 0)
            {
                /*Set up first Node*/
                if(data != NULL){
                    head = newNode(data);
                    on = 1;
                }
            }else{
                /*inserting second node*/
                if(data != NULL){
                    insert_node(data,head);
                } 
            }
            while(data != NULL){
                printf("Data Processing: %d%c\n",(100*i)/index , 37);
                data = get_word(lines+i);
                if(data!=NULL){
                    /*Inserting word as it is into linked list*/
                    insert_node(data,head);
                }else{
                    /*Inserting a newLine char instead of a null*/
                    /*insert_node(newLineChar,head);*/
                }            
            }
        }
        /*Free line and string*/
        free(lines);
        free(string);
    }    
    return head;
}
/******************************************************************/
/*
  The search function takes a linked list pointer, and search for an
  inputted string from main. The comparison is completed using the compar
  function provided by the professor
*/
/******************************************************************/
struct node_struct*search( struct node_struct *list, char *target,  int(*compar)(const void*,const void*)){
    struct node_struct *p=list;
    struct node_struct *result = NULL;

    while(p!=NULL){
        /*Checks if target == to the pointer data*/
        if(compar(target, p->data) == 0) {

            struct node_struct *temp = result;
            struct node_struct *prev = result;
            /*Runs after first node is initialized. Sets prev and temp*/
            while (temp != NULL) {
                prev = temp;
                temp = temp->next;
            }
            /*Runs on first node after insertion. Mallocs space and stores
              the next value of result and previous.
            */
            if (prev == NULL) {
                result = malloc(sizeof(struct node_struct));
                result->next = NULL;
                prev = result;
            }
            else {
                /*If previous value is not null malloc space for a new node*/
                prev->next = malloc(sizeof(struct node_struct));
                prev = prev->next;
                prev->next = temp;
            }
            
            prev->data = p;
        }
        /*Increment the pointer to jump a node*/
        p = p->next;
    }
    return result;

}
/******************************************************************/
/*
  The copy function creates a duplicate of the linkedlist from the start to end pointers.
  This function returns a new linked list.
*/
/******************************************************************/
struct node_struct *copy( struct node_struct *start, struct node_struct *end ){
    struct node_struct* currentList = start;	
	struct node_struct* newList = NULL; 
	struct node_struct* tailVar = NULL;
    /*
      check if the pointer list reached a null pointer
    */
	while (currentList != NULL)  
	{
        /*if pointer reaches the destination end, break the loop.*/
        if(currentList == end){
            break;
        }
		if (newList == NULL)
		{
            /*Creating the first node and setting up the data and next values*/
			newList = (struct node_struct*)malloc(sizeof(struct node_struct));
			newList->data = currentList->data;
			newList->next = NULL;
			tailVar = newList;
		}
		else
		{
            /*connecting the linked lists using the pointer from the dummy variable tailVar
            Tailvar points to the previously added node*/
			tailVar->next = (struct node_struct*)malloc(sizeof(struct node_struct));
			tailVar = tailVar->next;
			tailVar->data = currentList->data;
			tailVar->next = NULL;
		}
        /*incrementing the current list scanning*/
		currentList = currentList->next;
	}
	return newList;
}
/******************************************************************/
/*
  The function ftext opens the file fp under write permissions and fprints the linked
  list to a ftext.txt file. The text is inserted under the rules given in the assignment.
*/
/******************************************************************/
void ftext( FILE *fp, struct node_struct *list ){
    struct node_struct *iterator = list;
    char *myData;
    char *nextData;
    int characterCounter = 0;
    int flag = 0;

    /*Opening the file and writing the information into the text file*/
    fp = fopen("ftext.txt", "w");
    if(!(fp))
    {
        printf("ERROR IN twt2words\n");
        return;
    }else{
        while(iterator!= NULL)
        {
            
            myData = (char *)iterator->data;
            characterCounter = characterCounter + strlen(myData);
            /*printf("WORD : %s   \n",myData);*/
            if(characterCounter > 80){
                characterCounter = 0;
                /*printf("ADDED NEW LINE\n");*/
                fprintf(fp, "\n");
            }
            if(iterator->next != NULL){
                nextData = (char *)iterator->next->data;
            }else{
                fclose(fp);
                break;
            }
            /*If last line, doubleqoute, or double dash do not add a space*/
            if(nextData== NULL || strcmp(nextData,"\"") == 0|| strcmp(nextData,"--") == 0 ){
                /*printf("NO SPACE\n");*/
                flag = 1;
            }else if(strcmp(myData,"\n") == 0)
            {
                /*if newline change myData to a space instead*/
                flag = 1;
                myData = " ";
            }
            else{
                /*Add a space*/
                flag = 0;
            }
            
            /*if flag = 0 and the words meet the requirements in the assignment, add a new line*/
            
            if( (isalpha(myData[0]) || isdigit(myData[0]) ||strcmp(myData,",") == 0 || strcmp(myData,";") == 0 || strcmp(myData,"!") == 0 || strcmp(myData,"\"") == 0 ||strcmp(myData,".") == 0 || 
            (isdigit(myData[strlen(myData)-1]) && isalpha(nextData[0])) || (isalpha(myData[strlen(myData)-1]) && isdigit(nextData[0])) ) && flag == 0)
            {
                /*printf("PRINT WITH SPACE\n");*/
                fprintf(fp, "%s ", myData);
            }else{
                /*printf("FLAG:%d\n",flag);
                printf("PRINT WITH NO SPACE\n");*/
                fprintf(fp, "%s", myData);
            }
            /*Point the iterator to the next node*/
            iterator= iterator->next;    
        }
    }
    fclose(fp);
    return;
}
/******************************************************************/
/*
  The sorting function passes a double pointer to merge sort and returns the sorted list.
  The sorting function uses 4 different functions. miniSort, moveFunction, splitList.
  The functions is eplained in details and commented. Read the comments to understand how
  functions work. 
*/
/******************************************************************/
struct node_struct *sort( struct node_struct *list, int(*compar)(const void*,const void*)){
    struct node_struct* head = list;
    mergeSort(&head, strcmpvoid);
    return head;  
}
/******************************************************************/
/*
  The remove repeats, removes the concurrent occoracing data. Example: a
  node with data: you, you, you, him, you, you, him returns a you,him,you,him
  This function does not return a new linked list, but it changes the struct inserted 
*/
/******************************************************************/
void remove_repeats(struct node_struct *list, int(*compar)(const void*,const void*)){
    struct node_struct* current = list;
    struct node_struct* afternext;

    if (current == NULL) return; /*If linked list is null, return*/

    while(current->next!=NULL) { /*Iterating over all the nodes in the linked list*/
        if (compar(current->data,current->next->data) == 0) {
            afternext = current->next->next; /*setting up the afterNext variable*/
            free(current->next); /*Free the current value*/
            current->next = afternext; /*set the current-next to the next variable saved in afternext*/
        }
        else {
            current = current->next; /*Increment the current node and jump to the next one*/
        }
    }
}
/******************************************************************/
/*
  The function length returns the number of words in the node given.
  The lenght includes the newlines in the file.
*/
/******************************************************************/
int length( struct node_struct *list){
    int length = 0;
    struct node_struct *temp = list;
    while(temp!=NULL) { /*Increments the node counter until NULL is reached*/
        length++;
        temp = temp->next; /*Point to next node*/
    }
    return length;
}
/******************************************************************/
/*
  The function below frees the linked list by freeing all the nodes created.
*/
/******************************************************************/
void free_list( struct node_struct *list, int free_data){
    struct node_struct* current = list; 
    struct node_struct* next;

    while (current != NULL) {
        next = current->next; 
        if(free_data == 1){
            free(current);
        }else{
            free(current->next);
        }
        current = next; 
    }
    list = NULL; 
}
/******************************************************************/
/******************************************************************/
/******************************************************************/
/******************************************************************
                    END OF ASSIGNMENT 2
*******************************************************************/
/******************************************************************/
/******************************************************************/
/******************************************************************/

/*HELPER FUNCTIONS USED IN ASSIGNMENT 2*/
/******************************************************************/
/******************************************************************/
struct node_struct *newNode(char *string) {
    struct node_struct *newNode = (struct node_struct*)malloc(sizeof(struct node_struct));

    if(newNode == NULL){
        fprintf(stderr, "Unable to allocate memory for new node\n");
        exit(-1);
    }
    newNode->data = string;
    newNode->next = NULL;  /* Change 1*/
    /*check for first insertion*/
    
    return newNode;
}
/******************************************************************/
void insert_node(char *data, struct node_struct *head){

    /*create new node*/
    struct node_struct *newNode = (struct node_struct*)malloc(sizeof(struct node_struct));

    if(newNode == NULL){
        fprintf(stderr, "Unable to allocate memory for new node\n");
        exit(-1);
    }
    newNode->data = data;
    newNode->next = NULL;  /* Change 1*/

    /*check for first insertion*/
    if(head->next == NULL){
        head->next = newNode;
    }
    else
    {
        /*else loop through the list and find the last*/
        /*node, insert next to it*/
        struct node_struct *current = head;
        while (1) { /* Change 2*/
            if(current->next == NULL)
            {
                
                current->next = newNode;
                break;
            }
            current = current->next;
        };
    }
    
}
/******************************************************************/
void printLinkedList(struct node_struct *linkedList){
    char *characterTemp;
    struct node_struct *temp = linkedList;

    while(temp!=NULL) {
        characterTemp = temp->data;
        printf("Data : %s\n", characterTemp);
        temp = temp->next;

    }

}
/******************************************************************/
char *get_word(char **string_ptr){
    char *start;
    char *word=NULL;
    unsigned int word_len;
    int type = 0;
    
    /*Return NULL if there is no string to process*/
    if((string_ptr==NULL)||(*string_ptr==NULL)||(**string_ptr=='\0'))
    {
        return NULL;
    }
    /*Make note of where this word starts*/
    there:
    if(**string_ptr =='\0' ||**string_ptr ==13)
    {
        return NULL;
    }
    start=*string_ptr; /*Set starting position*/
    type = typeFinder(string_ptr);
    /*Splitting Words depending on the type*/
    /*Type 1 incrementation*/
    while (type == 1)
    {
        type = typeFinder(string_ptr);
        (*string_ptr)++;
        if(typeFinder(string_ptr) != 1){
            type = 4;
        }
    }
    while (type == 9)
    {
        type = typeFinder(string_ptr);
        (*string_ptr)++;
        
        type = 4;
    }
    /*Type 2 incrementation*/
    while (type == 2)
    {
        type = typeFinder(string_ptr);
        (*string_ptr)++;
        if(typeFinder(string_ptr) != 2){
            type = 4;
        }
    }
    /*Type 3 incrementation*/
    while (type == 3)
    {
        type = typeFinder(string_ptr);
        (*string_ptr)++;
        goto there;
    }
    while (type == 5)
    {
        type = typeFinder(string_ptr);
        (*string_ptr)++;
        if(typeFinder(string_ptr) != 5){
            type = 4;
        }
    }
    /*save word if space*/
    if(type == 4)
    {
        word_len=(*string_ptr)-start;
        if(word_len)
        {
            word=malloc(word_len+1);
            strncpy(word,start,word_len);
            word[word_len]='\0'; 
            return word;
        }
    }
    return NULL;
}
/******************************************************************/
int typeFinder(char **string){
    int type = 0;
    /*Figuring out the type*/
    if(isalpha(**string) || isdigit(**string) || **string == 39)
    {
        type = 1;
    }else if((**string == '-' )){
        if (flagEnable == 1){
            flagEnable = 0;
            type = 2;
            return type;
        }
        (*string)++;
        if((**string) == '-'){ 
            flagEnable = 1;
            type = 2;
        }else
        {
            type = 1;
        }
        (*string)--;

    }else if(**string == '\"'){
        type = 5; /*Added this*/
    }else if(**string == '.'){
        type = 9; /*Added this*/
    }
    else if(!isalpha(**string) && !isdigit(**string) && ( ((**string >= 33) && (**string <= 38)) || ((**string >= 40) && (**string <= 44)) ||
    ((**string >= 46) && (**string <= 47))||((**string >= 58) && (**string <= 64))||((**string >= 91) && (**string <= 96)) ||
    ((**string >= 123) && (**string <= 126))))       
    {
        type = 2;
    }else
    {
        type = 3;
    }
    return type;
}
/******************************************************************/
struct node_struct* miniSort(struct node_struct* in1, struct node_struct* in2 , int(*compar)(const void*,const void*) ) {
    struct node_struct* finalOutput = NULL;
    struct node_struct** refernceP = &finalOutput;
    
    while (1) {
        if (in1==NULL) {
        *refernceP = in2;
        break;
        }
        else if (in2==NULL) {
            *refernceP = in1;
            break;
        }
        if (compar(in1->data, in2->data) <= 0) {
            moveFunction(refernceP, &in1);
        }
        else {
            moveFunction(refernceP, &in2);
        }
        refernceP = &((*refernceP)->next); 
    }
    return(finalOutput);
}
/******************************************************************/
void splitList(struct node_struct *list,struct node_struct** start, struct node_struct **end) {
    int len = length(list);
    int i;
    struct node_struct* current = list;

    if (len < 2) {
        *start = list;
        *end = NULL;
    }
    else {
        int hopCount = (len-1)/2;
    
        for (i = 0; i<hopCount; i++) {
            current = current->next;
        }
        
        *start = list;
        *end = current->next;
        current->next = NULL;
    }
}
/******************************************************************/
void mergeSort(struct node_struct** list , int(*compar)(const void*,const void*) ) {
    struct node_struct* head = *list;
    struct node_struct* a;
    struct node_struct* b;
    
    if ((head == NULL) || (head->next == NULL)) { /*Error Checking*/
        return;
    }

    splitList(head, &a, &b); /*Splitting the list for sorting*/
    
    mergeSort(&a, strcmpvoid); /*Recursive calling*/
    mergeSort(&b, strcmpvoid);
    *list = miniSort(a, b, strcmpvoid); /*sorting split lists*/
}
/******************************************************************/
void moveFunction(struct node_struct** destination, struct node_struct** list) {
    struct node_struct* newNode = *list; 
    assert(newNode != NULL);    /*Assert as long as newNode is not null*/
    *list = newNode->next;      /*Setting the address of list*/
    newNode->next = *destination; 
    *destination = newNode;
}
/******************************************************************/
/*FUNCTION FROM PROFESSOR*/
/******************************************************************/
/******************************************************************/
int strcmpvoid( const void *a, const void *b ){
  char *ptr_a, *ptr_b;  /*Declaring char pointers For STRCMP Fnction*/
  ptr_a = (char *)a;    /*Casting VOID Pointers*/
  ptr_b = (char *)b;
  return strcmp( ptr_a, ptr_b ); /*if A>B return 1 || if A == B return 0*/
}