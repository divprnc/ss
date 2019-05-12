%{
	#include<stdio.h>
	/*prince kumar
	divyanshu bhaskar*/
	int cc;
%}

%x C
%%

"/*" {BEGIN C; cc++;}
<C>;
<C>\n;
<C>"*/" {BEGIN 0;}
%%

int main(int argc,char **argv)
{
	yyin = fopen(argv[1],"r");
	yyout = fopen(argv[2],"w");
	yylex();
	printf("\nNumber of the comments lines are:%d",cc-1);
/*sadfhjdsfjkasdf */
/*sadfkhjsadfksadfkhjlasdlkf
sdadfskadjfhjaskdf*/
	return 0;
}
