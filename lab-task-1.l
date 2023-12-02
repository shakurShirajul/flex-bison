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
=======
[0-9\n]    {return yytext[0]; }
>>>>>>> 141f80bbe071ccedbd342184f17a26a0f653114d
.          {fprintf(stderr, "Error\n"); exit(1);}
%%
