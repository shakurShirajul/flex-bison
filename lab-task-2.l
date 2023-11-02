/* 
*
* Authur: Shirajul Islam Shakur
*
*/

%option noyywrap
%{
    #include "tab-task-2.tab.h"
%}

%%
 a return A;
 b return B;
. return (yytext[0]);
\n return('\n');
%% 
