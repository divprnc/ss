%{
int cc=0;
int wc=0;
int lc=0;
int bc=0;
%}
word [^\t\n\b]+
eol [\n]
%%
{word]  {wc++;cc+=yyleng;}
{eol} {lc++;}
[ ] {bc++;cc++;}
[\t] {bc++;cc++;}
%%
int main(int argc,char **argv)
if(argc>1)
{
FILE *file;
file=fopen(argv[1],"r");
if(!file)
{
printf("could not open file \n");
exit(1);
}
yyin=file;
yylex();
printf("nuber of blank lines are %d\n",bc);
printf("number of characetr are %d\n"cc);
printf("number of lines are %d\n",lc);
printf("number of words are %d\n",wc);
fclose(file);
return 0;
}





