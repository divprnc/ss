%{ 
	#include "y.tab.h"
%}
%%

[a-zA-Z] {return Alpha;}
[0-9]+ {return Num;}
[\t]+ ;
[\n] {return '\n';}
. {return yytext[0];}
%%

