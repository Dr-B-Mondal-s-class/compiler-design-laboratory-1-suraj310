%{
	//write a lex code to check input is valid keyword or not
	#include<stdio.h>;
%}

%%
(if|else|while|int|switch|for|char|break|float|case|double|string|sort|continue|do) {printf("keyword");}//key word is found
.* {printf("invalid");};//if anything other than keyword is found
%%
main(){
	yylex();
	
}
int yywrap()
{
	return 0;
}
