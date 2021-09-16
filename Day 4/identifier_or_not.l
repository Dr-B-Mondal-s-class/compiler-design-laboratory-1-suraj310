%{
	// valid identifier or not
	//27/8/2021_2v1
%}

keyword (int|float|main|char|class|bool|true|false|return|for|if|while|do|struct|else|case|switch)
identifier [a-zA-Z_][0-9a-zA-Z]*

%%
{keyword}+ {printf("input is keyword %s", yytext);}
{identifier} {printf("valid identifier %s", yytext);}
.+ {printf("invalid identifier");}
%%

int main(){
	yylex();
}

int yywrap(void){
	return 0;
}


