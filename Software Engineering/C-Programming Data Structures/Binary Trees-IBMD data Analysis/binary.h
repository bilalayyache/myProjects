/*
Assignment 3
Name: Bilal Ayyache
Student Number: 0988616
UofG Email: bayyache@uoguelph.ca
*/
typedef struct binTreeNode TreeNode;

typedef struct binTree{
	int itemCounter;
	void *arrayAdress;
	TreeNode *root1;
	TreeNode *root2;
}Tree;
struct binTreeNode{
	char* key;
	struct title_basics * data;
	TreeNode * left;
	TreeNode * right;
};
struct title_basics {
    char *tconst;
    char *primaryTitle;  
};

void build_ptindex(struct binTree *Tree);
void build_tindex(struct binTree *Tree);
void add_node(struct binTreeNode **rootNum, char* string, struct title_basics *value);
struct title_basics * find_node( TreeNode **rootNum, char* string );
struct title_basics * find_tconstN( TreeNode **rootNum, char* string );

/*------------------------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------------------------*/
typedef struct name_basics_node name_basicsNode;

struct name_basics {
    char *nconst;
    char *primaryName;
    /*int elementsNum;*/
};
struct name_basics_node {
	char* key;
	struct name_basics *data;
	name_basicsNode * left;
	name_basicsNode * right;
};
struct name_basics_tree {
    int itemCounter;
	void *arrayAdress;
	name_basicsNode *root1;
	name_basicsNode *root2;
};

void build_pnindex(struct name_basics_tree *Tree);
void build_nindex(struct name_basics_tree *Tree);
void add_node_name(struct name_basics_node **rootNum, char* string, struct name_basics *value);
struct name_basics * find_node_name( struct name_basics_node **rootNum, char* string );
struct name_basics * find_nconstN( struct name_basics_node **rootNum, char* string );
/*------------------------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------------------------*/
typedef struct title_principals_node title_principalsNode;

struct title_principals {
    char *tconst;
    char *nconst;
    char *characters;
};
struct title_principals_node {
	char* key;
	struct title_principals *data;
	title_principalsNode * left;
	title_principalsNode * right;
};
struct title_principals_tree {
    int itemCounter;
	void *arrayAdress;
	title_principalsNode *root1;
	title_principalsNode *root2;
};

void build_tindex_tp(struct title_principals_tree *Tree);
void build_nindex_tp(struct title_principals_tree *Tree);
void add_node_principals(struct title_principals_node **rootNum, char* string, struct title_principals *value);
struct title_principals * find_tconst_tpN( struct title_principals_node **rootNum, char* string );
struct title_principals * find_nconst_tpN( struct title_principals_node **rootNum, char* string );
/*------------------------------------------------------------------------------------------------------*/
void printCharactersN(char* nmValue,struct title_principals_node *root ,struct binTree *titleTree);
void printCharactersT(char* ttValue,struct title_principals_node *root ,struct name_basics_tree *titleTree);
void print2DUtil(title_principalsNode *root, int space) ;
void print2D(title_principalsNode *root);
/*------------------------------------------------------------------------------------------------------*/