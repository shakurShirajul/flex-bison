%{
    #include<stdio.h>
    extern int yylex();
    void yyerror(char *s);
%}
%token A B


%%
    start: anbn '\n' {printf("Sucess");return 0;}
    anbn: A B
        | A anbn B
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
