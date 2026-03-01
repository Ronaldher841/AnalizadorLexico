package lexer;

%%

%class Lexer
%public
%unicode
%line
%column
%type Token

%{

private Token token(String nombre, String lexema, String patron){
    return new Token(
        nombre,
        lexema,
        patron,
        yyline + 1,
        yycolumn + 1
    );
}

%}

/* ===== MACROS ===== */

ESPACIO = [ \t\r\n]+
DIGITO = [0-9]
ENTERO = {DIGITO}+
DECIMAL = {DIGITO}+ "." {DIGITO}+
STRING = \"([^\"\\]|\\.)*\"
BOOLEANO = true|false
NULL = null

%%

"{" { return token("LLAVE_ABRE", yytext(), "{"); }
"}" { return token("LLAVE_CIERRA", yytext(), "}"); }

"[" { return token("CORCHETE_ABRE", yytext(), "["); }
"]" { return token("CORCHETE_CIERRA", yytext(), "]"); }

":" { return token("DOS_PUNTOS", yytext(), ":"); }
"," { return token("COMA", yytext(), ","); }

{STRING}   { return token("STRING", yytext(), "CADENA_JSON"); }
{DECIMAL}  { return token("NUM_DECIMAL", yytext(), "DECIMAL"); }
{ENTERO}   { return token("NUM_ENTERO", yytext(), "ENTERO"); }
{BOOLEANO} { return token("BOOLEANO", yytext(), "true|false"); }
{NULL}     { return token("NULL", yytext(), "null"); }

{ESPACIO}  { /* ignorar */ }

. {
    System.out.println(
        "Error léxico: " + yytext() +
        " linea: " + (yyline+1)
    );
}