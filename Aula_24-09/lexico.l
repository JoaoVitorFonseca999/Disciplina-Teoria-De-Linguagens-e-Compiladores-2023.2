/*Definições*/
digito         [0-9]
letra          [a-zA-Z]
%{
   int conta = 0;
%}
%%/*Ações*/

{letra}({letra}|{digito})*               {conta++;puts(yytext);}
.                                      /*Nada*/;
\n                                     /*Nada*/;
%% /*Código do usuário*/
int yywrap(void) { return 1; }

int main (void) {
   yylex();
   printf("Total de palavras: %d\n", conta);
   return 0;
}