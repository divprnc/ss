%{
	int flag =0;
%}
%%
(" "[aA][Nn][Dd]" ")|(" "[Oo][Rr]" ")|(" "[bB][Uu][tT]" ") flag=1; 
. ; 
%%
int main()
{
	printf("Enter the sentence and press ctrl + d: ");
	yylex();
	if(flag ==1)
	{
		printf("Compound\n");
	}
	else
	{
		printf("Simple\n");
	}
return 0;
}
