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

A seguir, é descrito um passo a passo com a configuração do ambiente necessária para a execução do trabalho desenvolvido para a disciplina de Tradutores, utilizando as ferramentas JFlex + CUP:

1.	Baixar a versão mais atual do JFlex em: https://jflex.de/download.html.
   1.1 Descompactar o arquivo .zip em uma pasta de sua preferência, por exemplo: "C:\Compiladores\JFlex"
   1.2 Adicionar o diretório do JFlex ao caminho de busca do sistema.
  	•	Clicar com o botão direito sobre "Este Computador" ou "Meu Computador" e escolher "Propriedades".
  	•	Selecionar "Configurações avançadas do sistema".
  	•	Na aba "Avançado", clicar em "Variáveis de ambiente".
  	•	Na seção "Variáveis do sistema", localizar a variável $PATH e clicar em "Editar".
  	•	Clicar em "Novo" e adicionar o caminho completo da pasta "JFlex" → Exemplo: "C:\ Compiladores\JFlex\bin"
  	•	Em seguida, localizar a variável $CLASSPATH e clicar em "Editar".
  	•	Clicar em "Novo" e adicionar o caminho completo da pasta "JFlex" → Exemplo: "C:\Compiladores\JFlex"

<img width="829" height="417" alt="image" src="https://github.com/user-attachments/assets/5abe5dfd-aeb5-4b8f-9a54-8e79ad6dc28c" />

#### Verificação da Instalação
Execute no prompt de comando:
```bash
jflex
```
Se instalado corretamente, será exibida a tela de confirmação do JFlex.

<img width="931" height="617" alt="image" src="https://github.com/user-attachments/assets/40bfbc6b-2f93-4beb-8b7c-5227c5d003af" />

### 2. Instalação do CUP

2.	Baixar a versão mais atual do CUP em: http://www2.cs.tum.edu/projects/cup/.
   2.1 Descompactar o arquivo .zip em uma pasta de sua preferência, por exemplo: "C:\CUP"
   2.2 Adicionar o diretório do CUP ao caminho de busca do sistema.
  	 •	Clicar com o botão direito sobre "Este Computador" ou "Meu Computador" e escolher "Propriedades".
  	 •	Selecionar "Configurações avançadas do sistema".
  	 •	Na aba "Avançado", clicar em "Variáveis de ambiente".
  	 •	Na seção "Variáveis do sistema", localizar a variável $PATH e clicar em "Editar".
  	 •	Clicar em "Novo" e adicionar o caminho completo da pasta "CUP" → Exemplo: "%CUP_HOME%\bin "
  	 •	Em seguida, localizar a variável $CLASSPATH e clicar em "Editar".
  	 •	Clicar em "Novo" e adicionar o caminho completo da pasta "CUP" → Exemplo: "C:\Program Files\CUP"

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
# Analisador Léxico e Sintático

Este projeto implementa um analisador léxico e sintático utilizando as ferramentas **JFlex** e **CUP** para processar comandos condicionais e operações matemáticas básicas.

## 📋 Índice

- [Descrição](#descrição)
- [Gramática](#gramática)
- [Pré-requisitos](#pré-requisitos)
- [Configuração do Ambiente](#configuração-do-ambiente)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Como Executar](#como-executar)
- [Exemplos de Uso](#exemplos-de-uso)
- [Tratamento de Erros](#tratamento-de-erros)

## 🎯 Descrição

O projeto consiste em um compilador que processa uma linguagem simples contendo:
- Comandos condicionais (`if-else` e `while`)
- Operações de atribuição
- Operações matemáticas básicas
- Comparações relacionais

## 📝 Gramática

A gramática da linguagem é definida como:

```
G = {comando, condição_if, condição_while, operação, operação_matemática, 
     operador_relacional, operador_matemático, operador_atribuição, 
     condição, identificador, numero, numero_mz, letra, ...}
```

### Produções Principais:

```
comando ::= condição_if | condição_while

condição_if ::= "if" "(" Condicao ")" "{" operação* "}" "else" "{" operação "}"

condição_while ::= "while" "(" Condicao ")" "{" atribuição "}"

operação ::= Identificador Operador_atribuicao Identificador ";"
           | identificador operador_atribuição operação_matematica ";"

operação_matemática ::= identificador operador_matemático identificador
                      | identificador "/" (identificador | numero_mz)

condicao ::= identificador Operador_relacional (identificador|numero)

identificador = letra(letra|numero)*
letra = [a-z]
numero_mz = [1-9] | [1-9]("."|[0-9])*
numero = [0-9]* | [0-9]* "." [0-9]*
```

### Operadores Suportados:

- **Matemáticos**: `+`, `-`, `*`, `/`
- **Atribuição**: `=`, `+=`, `-=`, `*=`, `/=`
- **Relacionais**: `==`, `!=`, `<`, `>`, `<=`, `>=`

## ⚙️ Pré-requisitos

- Java JDK 8 ou superior
- JFlex (versão mais recente)
- CUP (versão mais recente)
- Windows (para seguir as instruções de configuração)

## 🔧 Configuração do Ambiente

### 1. Instalação do JFlex

1. Baixe a versão mais atual do JFlex em: https://jflex.de/download.html
2. Descompacte o arquivo `.zip` em uma pasta (ex: `C:\Compiladores\JFlex`)
3. Configure as variáveis de ambiente:
   - **PATH**: Adicione `C:\Compiladores\JFlex\bin`
   - **CLASSPATH**: Adicione `C:\Compiladores\JFlex`

#### Verificação da Instalação
Execute no prompt de comando:
```bash
jflex
```
Se instalado corretamente, será exibida a tela de confirmação do JFlex.

### 2. Instalação do CUP

1. Baixe a versão mais atual do CUP em: http://www2.cs.tum.edu/projects/cup/
2. Descompacte o arquivo `.zip` em uma pasta (ex: `C:\CUP`)
3. Configure as variáveis de ambiente:
   - **PATH**: Adicione `%CUP_HOME%\bin`
   - **CLASSPATH**: Adicione `C:\Program Files\CUP`

## 📁 Estrutura do Projeto

```
projeto/
├── lexica.flex          # Definições do analisador léxico
├── sintatica.cup        # Definições da gramática sintática
├── Main.java           # Classe principal
├── entrada.txt         # Arquivo de entrada para análise
└── README.md           # Este arquivo
```

### Descrição dos Arquivos:

- **`lexica.flex`**: Define as expressões regulares para identificação de tokens
- **`sintatica.cup`**: Contém as regras da gramática para análise sintática
- **`Main.java`**: Integra os analisadores e processa o arquivo de entrada
- **`entrada.txt`**: Arquivo contendo o código a ser analisado

## 🚀 Como Executar

### 1. Geração dos Analisadores

Execute os seguintes comandos no prompt dentro da pasta do projeto:

```bash
jflex lexica.flex
cup sintatica.cup
javac *.java
```

### 2. Preparação da Entrada

Edite o arquivo `entrada.txt` com o código a ser analisado (utilize apenas a primeira linha).

### 3. Execução da Análise

```bash
java Main
```

**Resultado esperado:**
- ✅ **Sucesso**: Nenhuma mensagem (entrada válida)
- ❌ **Erro**: Mensagem descrevendo o problema encontrado

## 📖 Exemplos de Uso

### ✅ Entradas Válidas

```javascript
// Exemplo 1: Comando if-else
if (x == 5) { y = 10; } else { z = 20; }

// Exemplo 2: Loop while
while (i < 10) { i += 1; }

// Exemplo 3: Operações matemáticas
resultado = a + b;
```
<img width="938" height="539" alt="image" src="https://github.com/user-attachments/assets/7c3c8cbc-a8f7-428f-9bcb-2a992e3561c0" />


### ❌ Entradas Inválidas

```javascript
// Erro: Sintaxe incorreta
if x == 5 { y = 10; }  // Faltam parênteses

// Erro: Operador inválido
x === y;  // Operador não reconhecido

// Erro: Estrutura incompleta
while (i < 10) {  // Falta fechamento
```
<img width="998" height="305" alt="image" src="https://github.com/user-attachments/assets/65ecbd32-b1b6-4406-befc-6f76b92dd4d8" />

<img width="984" height="288" alt="image" src="https://github.com/user-attachments/assets/6c0c7945-7085-4383-97d1-22ad59aef1b2" />

<img width="780" height="388" alt="image" src="https://github.com/user-attachments/assets/55f71259-42e9-4000-822a-ff667ee2c4fe" />


## 🐛 Tratamento de Erros

O analisador detecta e reporta diversos tipos de erros:

- **Erros Léxicos**: Caracteres ou tokens não reconhecidos
- **Erros Sintáticos**: Estruturas que não seguem a gramática definida

As mensagens de erro são exibidas no console, indicando o tipo e a localização do problema.

---
