/* 
*
* Authur: Shirajul Islam Shakur
*
*/

%option noyywrap
%{
    #include "lab-task-1.tab.h"    
%}

%%
[0-9\n]    {return yytext[0];}
.          {fprintf(stderr, "Error\n"); exit(1);}
%%
