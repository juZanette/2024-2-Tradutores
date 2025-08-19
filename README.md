# Analisador Léxico e Sintático

## 🎯 Descrição

Este projeto implementa um analisador léxico e sintático utilizando as ferramentas **JFlex** e **CUP** para processar comandos condicionais e operações matemáticas básicas.

## 📝 Gramática

A gramática da linguagem é definida como:

```
G = {comando, condição_if, condição_while, operação, operação_matemática, operador_relaciona, operador_matemático, operador_atribuição, condição, identificador, numero., numero_mz,  letra, "if", "while", "else", "(", ")", "{", "}", "+", "-", "*", "/", "=", "+=", "-=", "*=", "/=", "==", "!=", "<", ">", "<=", ">=", ";"}

P:

comando::= condição_if | condição_while

condição_if::= "if" "(" Condicao ")" "{" operação* "}" "else" "{" operação "}" 

condição_while ::= "while" "(" Condicao ")" "{" atribuição "}"

operação ::= Identificador Operador_atribuicao Identificador ";"
| identifacor operador_atribuição operação_matematica";" 

operação_matemática::= identificador operador_matemático identificador 
| identificador "/" (identificador | numero_mz)

condicao ::= identificador Operador_relacional (identificador|numero)

identificador = letra(letra|numero)*

letra = [a-z]

numero_mz =  [1-9] | [1-9]("."|[0-9])*

numero = [0-9]* | [0-9]* "." [0-9]*

operador_matematico = "+" | "-" | "*" 

Operador_atribuicao = "=" | "+=" | "-=" | "*=" | "/="

Operador_relacional = "==" | "!=" | "<" | ">" | "<=" | ">="

```

### Operadores Suportados:

- **Matemáticos**: `+`, `-`, `*`, `/`
- **Atribuição**: `=`, `+=`, `-=`, `*=`, `/=`
- **Relacionais**: `==`, `!=`, `<`, `>`, `<=`, `>=`

## ⚙️ Pré-requisitos

- Java JDK 8 ou superior;
- JFlex (versão mais recente);
- CUP (versão mais recente);
- Windows (para seguir as instruções de configuração).

## 🔧 Configuração do Ambiente

### 1. Instalação do JFlex

1. Baixe a versão mais atual do JFlex em: https://jflex.de/download.html
2. Descompacte o arquivo `.zip` em uma pasta (ex: `C:\Compiladores\JFlex`)
3. Clique com o botão direito sobre "Este Computador" ou "Meu Computador" e escolha "Propriedades"
4. Selecione "Configurações avançadas do sistema"
5. Na aba "Avançado", clique em "Variáveis de ambiente".
6. Configure as variáveis de ambiente:
   - **PATH**: Adicione `C:\Compiladores\JFlex\bin`
   - **CLASSPATH**: Adicione `C:\Compiladores\JFlex`

<img width="829" height="417" alt="image" src="https://github.com/user-attachments/assets/5abe5dfd-aeb5-4b8f-9a54-8e79ad6dc28c" />

#### Verificação da Instalação
Execute no prompt de comando:
```bash
jflex
```
Se instalado corretamente, será exibida a tela de confirmação do JFlex.

<img width="931" height="617" alt="image" src="https://github.com/user-attachments/assets/40bfbc6b-2f93-4beb-8b7c-5227c5d003af" />

### 2. Instalação do CUP

1. Baixe a versão mais atual do CUP em: http://www2.cs.tum.edu/projects/cup/
2. Descompacte o arquivo `.zip` em uma pasta (ex: `C:\CUP`)
3. Clique com o botão direito sobre "Este Computador" ou "Meu Computador" e escolha "Propriedades"
4. Selecione "Configurações avançadas do sistema"
5. Na aba "Avançado", clique em "Variáveis de ambiente".
4. Configure as variáveis de ambiente:
   - **PATH**: Adicione `%CUP_HOME%\bin`
   - **CLASSPATH**: Adicione `C:\Program Files\CUP`

<img width="945" height="501" alt="image" src="https://github.com/user-attachments/assets/9ef36455-a69d-4ef2-97e4-80cffe74b735" />

## 📁 Estrutura do Projeto

```
projeto/
├── lexica.flex         -> Define as expressões regulares para identificação de tokens
├── sintatica.cup       -> Contém as regras da gramática para análise sintática
├── Main.java           -> Integra os analisadores e processa o arquivo de entrada
├── entrada.txt         -> Arquivo contendo o código a ser analisado
└── README.md           -> Este arquivo
```

## 🚀 Como Executar

Para executar corretamente a aplicação, é necessário executar o Prompt de comando dentro da pasta da aplicação. Em seguida, digitar os seguintes códigos em sequência: 

```bash
jflex lexica.flex
java java_cup.Main sintatica.cup
javac Yylex.java
```

Feito isso, deve-se escrever no arquivo “entrada.txt” o trecho que será analisado, utilizando apenas a primeira linha do arquivo. Após salvar o arquivo de entrada, é necessário digitar os seguintes comandos no Prompt de comando:

```bash
javac Main.java
java Main
```

**Resultado esperado e tratamento de erros:**
- ✅ **Sucesso**: Nenhuma mensagem (entrada válida)
- ❌ **Erro**: As mensagens de erro são exibidas no console, indicando o tipo e a localização do problema.
   - **Erros Léxicos**: Caracteres ou tokens não reconhecidos
   - **Erros Sintáticos**: Estruturas que não seguem a gramática definida

## 📖 Exemplos de Uso

### ✅ Entradas Válidas

<img width="938" height="539" alt="image" src="https://github.com/user-attachments/assets/7c3c8cbc-a8f7-428f-9bcb-2a992e3561c0" />


### ❌ Entradas Inválidas

<img width="998" height="305" alt="image" src="https://github.com/user-attachments/assets/65ecbd32-b1b6-4406-befc-6f76b92dd4d8" />

<img width="984" height="288" alt="image" src="https://github.com/user-attachments/assets/6c0c7945-7085-4383-97d1-22ad59aef1b2" />

<img width="780" height="388" alt="image" src="https://github.com/user-attachments/assets/55f71259-42e9-4000-822a-ff667ee2c4fe" />









---
