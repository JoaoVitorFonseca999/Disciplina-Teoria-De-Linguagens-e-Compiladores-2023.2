/*bison -v -d -g gramatica.y -o gramatica.c
    dot -Tpng gramatica.gv -o gramatica.png */
%start S

%%
S : 'a'S'c';
S : 'b';
%%
