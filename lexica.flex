import java_cup.runtime.Symbol;
import java.lang.Integer;

%%
%cup
%line
%column

digito = [0-9]
letra = [a-z]
inteiro = [0-9]*

tipo = "int " | "char " | "float "
if = "if" | "if " | "if;"
while = "while" | "while "
else = "else " | "else"
virg = "," | ", "
ap = "("
fp = ")"
opa = "=" | "+=" | "*=" | "-=" 
opc = ">" | "<" | "<=" | ">=" | "==" | "!="
opm = "+" | "-" | "*" 

numero = {inteiro} | {inteiro} "." {inteiro}
numero_mz = [1-9] | [1-9]("."|[0-9])*

array = "["{inteiro}"]"
ident = ({letra}|"_")({letra}|{digito}|"_")* | ({letra}|"_")({letra}|{digito}|"_")*{array}
variavel = {tipo}{ident} | {tipo}{ident}({virg}{ident})* | {tipo}{ident}" = "({ident}|{numero})


op_mat = {ident} {opm} ({ident}|{numero}) | {ident} "/" ({ident}|{numero_mz})
op_cond = {ident} {opc} ({ident}|{numero})
op_at = {ident} {opa} ({ident}|{numero}) | {ident} {opa} {op_mat} | {ident} "/=" ({ident}|{numero_mz})
op_if = {if} {ap} {op_cond} {fp}


%%

"(" { return new Symbol(sym.AP, yyline, yycolumn, yytext()); }

")" { return new Symbol(sym.FP, yyline, yycolumn, yytext()); }

"{" { return new Symbol(sym.AC, yyline, yycolumn, yytext()); }

"}" { return new Symbol(sym.FC, yyline, yycolumn, yytext()); }

{else} { return new Symbol(sym.ELSE, yyline, yycolumn, yytext()); }

{if} { return new Symbol(sym.IF, yyline, yycolumn, yytext()); }

{while} { return new Symbol(sym.WHILE, yyline, yycolumn, yytext()); }

{op_at} { return new Symbol(sym.AT, yyline, yycolumn, yytext()); }

{op_cond} { return new Symbol(sym.CON, yyline, yycolumn, yytext()); }

{variavel} { 

String[] reserved = {"if", "char", "int", "float", "while"}; 
String[] tipe = {"char ", "int ", "float "}; 

for(int a = 0; a < tipe.length;a++){
	for (int i = 0; i < reserved.length; i++) { 
  	  if (yytext().equals(tipe[a]+reserved[i])) {
   	     throw new RuntimeException("Error: '" + reserved[i] + "' cannot be used as an identifier at line " + yyline + ", column " + yycolumn);
    		}
	}
}

return new Symbol(sym.VAR, yyline, yycolumn, yytext()); 
}

";" {return new Symbol(sym.PTVIRG);}

[^] { return new Symbol(sym.EOF,yyline, yycolumn, yytext()); }


