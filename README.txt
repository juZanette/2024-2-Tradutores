Integrantes: Júlia Faccio Zanette e Luiz Ariano Martins Silva
Para testar, adicionar as entradas no formato "int a;" "float b;" ou "char c;"

Executar os códigos na seguinte ordem no cmd:
 
jflex lexica.flex
javac java_cup.Main sintatica.cup
javac Yylex.java
javac Main.java
java Main

Caso o arquivo de entrada possua alguma informação inválida, o terminal indicará um erro.