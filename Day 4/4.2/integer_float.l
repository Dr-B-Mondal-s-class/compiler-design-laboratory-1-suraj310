%{
	//
%}

INT [0-9]
FLOAT [0-9]+"."[0-9]+

%%
{INT}+ {printf("Integer\n",yytext);}
{FLOAT} {printf("Float\n",yytext);}
.+ {printf("Neither integer nor float");}
%%

int main(){
	yylex();
}

int yywrap(void){
	return 0;
}
