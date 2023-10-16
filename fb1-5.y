%{
    #include<stdio.h>
    extern int yylex();
    void yyerror(char *s); // declaration
%}

%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL

%%
calclist: 
 | calclist exp EOL { printf("= %d\n", $2); }
 ;
exp: factor  
 | exp ADD factor { $$ = $1 + $3; }
 | exp SUB factor { $$ = $1 - $3; }
 ;
factor: term 
 | factor MUL term { $$ = $1 * $3; }
 | factor DIV term { $$ = $1 / $3; }
 ;
term: NUMBER 
 | ABS term { $$ = $2 >= 0? $2 : - $2; }
;
%%

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}
int main(int argc, char **argv)
{
    yyparse();
}
////bison -d fb1-5.y
/// flex fb1-4.l
/// gcc fb1-5.tab.c lex.yy.c
/// a.exe