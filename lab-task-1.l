/* 
*
* Authur: Shirajul Islam Shakur
* Checking Palindrom or not
*/

%option noyywrap
%{
    #include "lab-task-1.tab.h"    
%}

%%
<<<<<<< HEAD
[0-9\n]    {return yytext[0];}
[0-9\n]    {return yytext[0]; }
.          {fprintf(stderr, "Error\n"); exit(1);}
%%
