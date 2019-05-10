%{
#include<stdio.h>
/*my name is prince*/
int cc=0;
%}
%x cmnt
%%
"/*" {BEGIN cmnt;cc++;}
<cmnt>;
<cmnt>\n;
<cmnt>"*/" {BEGIN 0;}
%%
int main(int argc,char *argv[])
{
if(argc!=3)
{
printf("usage %s<srcfile><destfile>\n",argv[0]);
return;
}
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
printf("no of comments %d",cc-1);
return 0;
}
