%{
int yylex(void);
void yyerror(char *);
%}

%token NUM
%token MAIS
%token ENTER

%start comando

%%

comando
    :   comando expr ENTER
    |   
    ;
expr
    :   NUM
    |   expr NUM expr
    ;

%%
void yyerror (char *s){
    printf("%s \n",s);
}

int main (void){
    yyparse();
    return 0;
}
            
