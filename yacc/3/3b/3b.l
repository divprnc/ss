%{
	#include"y.tab.h"
%}
%%
[a-zA-Z] {return Letter;}
[0-9] {return Digit;}
[\n] {return '\n';}
. {return yytext[0];}

%%
