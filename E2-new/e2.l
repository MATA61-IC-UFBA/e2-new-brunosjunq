/* recognize tokens for the calculator */

%option noyywrap nodefault yylineno
%{
#include "token.h"

%}

%%
"+" 	{ return PLUS; }
"-" 	{ return MINUS; }
"*" 	{ return TIMES; }
"/" 	{ return DIV; }
"(" 	{ return OPENP; } 
")" 	{ return CLOSEP; }
[ \t] 	{ /* skip whitespace */ } 
\n      { return EOL; }
[0-9]+ 	{ return NUMBER; } 
.   	{ return ERROR; }
%%



