%{
#include<stdio.h>
int a[]={0,0,0,0},i,valid=1,operand=0;
%}
%x oper
%%
[a-z0-9]+ {BEGIN oper;operand++;}
<oper>"+" {if(valid){valid=0;i=0;}
            else ext();}
<oper>"-" {if(valid){valid=0;i=1;}
            else ext();}
<oper>"*" {if(valid){valid=0;i=2;}
            else ext();}
<oper>"/" {if(valid){valid=0;i=3;}
            else ext();}


<oper>"\n" {if(valid==0)ext();
                  else return 0;}
<oper>[a-z0-9]+ {operand++;if(valid==0)
               {valid=1;a[i]++;}
                   else ext();}
<oper>. valid=0;
.\n ext();
%%
void ext()
{
printf("invalid expression\n");
exit(0);
}
int main()
{
printf("enter arithmetic expression\n");
yylex();
printf("valid expression\n");
printf("no of additin is %d\n",a[0]);
printf("no of subtraction is %d\n",a[1]);
printf("no of Multiplication is %d\n",a[2]);
printf("no of Division is %d\n",a[3]);
return 0;
}
