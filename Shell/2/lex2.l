%{
int flag=0;
%}
%%
(" "[aA][nN][dD]" ")|(" "[bB][uU][tT]" ")|(" "[oO][rR]" ") flag=1;
.;
%%
int main()
{
printf("enter  a sentence:");
yylex();
if(flag==1)
printf("compound sentence\n");
else
printf("simple sentence\n");
return 0;
}
