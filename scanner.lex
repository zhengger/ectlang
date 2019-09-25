/* Definitions */
%{
  #include <iostream>
  using namespace std;
  extern "C" int yylex();
  // #include "parser.tab.c"  // to get the token types from Bison
%}


/* Rules next */
%%
[0-9]+.[0-9]+ cout << "FLOAT: (" << yytext << ")" << endl;
[0-9]+        cout << "INT: (" << yytext << ")" << endl;
"+"           cout << "PLUS" << endl;
"-"           cout << "MINUS" << endl;
"*"           cout << "TIMES" << endl;
"/"           cout << "DEVIDED BY" << endl;
";"           cout << "SEMECOLON" << endl;
[\t\r\n\f]    ; /* ignore whitespace */

%%
/* Code */

int main() {
  yylex();
}
