
%{

%}

%%
int|for|while|cout|return     { printf("%s \t\t\t\t\t Keyword\n", yytext); }
[a-zA-Z]+                     { printf("%s \t\t\t\t\t\t Identifier\n", yytext); }
[0-9]+                        { printf("%s \t\t\t\t\t\t Integer\n", yytext); }
\(|\)|\{|\}|\+|[=]+|<<        { printf("%s \t\t\t\t\t\t Operator\n", yytext); }
;|,                           { printf("%s \t\t\t\t\t\t Punctution\n", yytext); }
["]([^"]|\\(.|\n))*["]        { printf("%s \t\t\t String\n", yytext); }
"//".*                        { printf("%s \t\t\t Comment\n", yytext);}
[[:space:]]*                  { }
%%

int yywrap(){

}

int main(){

FILE *FilePointer;

FilePointer = fopen("input.txt","r");
yyin = FilePointer;

yylex();
return 0;
}
