Algoritmo "UC4 SA4 A2 Implementa��o de Fila"

// Descri��o   : Implementa��o de Fila usando vetor, fun��o e procedimento.
// Autor(a)    : Aline Pollis
// Data atual  : 20/03/2021

// .............................................................................
// .............................................................................
// ..... ADICIONAR .............................................................
// .............................................................................
// .............................................................................

funcao adicionar():caractere
Var
   nome:caractere
Inicio
   // Ser� solicitado quantos registros o usu�rio deseja adicionar, se for
   // requisitado um vetor maior que 25, a rotina pedir� que seja configurado
   // um valor menor.
   se (tamanho > 25) entao
      escreval("Insira um novo valor. A fila possui estouro de 25 posi��es.")
      leia(tamanho)
   fimse

   // O vetor ser� preenchido at� o valor atribuido para 'tamanho', e
   // tamb�m apresentar� a posi��o de cada entrada.
   para i de 1 ate tamanho faca
      escreval
      escreval("Adicionar na posi��o ",i)
      leia(nome)
      fila[ultimo] := nome
      ultimo := ultimo + 1
   fimpara
   retorne nome
fimfuncao

// .............................................................................
// .............................................................................
// ..... REMOVER ...............................................................
// .............................................................................
// .............................................................................

funcao remover():caractere
Var
   elemento:caractere
Inicio
   // A rotina atribui o valor vazio " " para o primeiro elemento dado
   // pelo usu�rio na fila.
   elemento := fila[1]
   fila[1] := ""	//Aspas vazia pq a sa�da � caractere.
   ultimo := ultimo - 1

   // Subir os dados de posi��o .
   para i de 1 ate ultimo faca
      fila[i]:=fila[i+1]
   fimpara

   // O que est� embaixo � zerado.
   para i de ultimo ate 25 faca
      fila[i]:=""
   fimpara

   retorne elemento

   listar()
fimfuncao

// .............................................................................
// .............................................................................
// ..... LIMPAR ................................................................
// .............................................................................
// .............................................................................

procedimento limpar()
Var
   i:inteiro
Inicio
   // Percorre o vetor e atribui vazio " " em todas as posi��es da fila.
   para i de 1 ate tamanho faca
      fila[i] := ""	//Aspas vazia pq a sa�da � caractere
   fimpara

   ultimo := 1

fimprocedimento

// .............................................................................
// .............................................................................
// ..... LISTAR ................................................................
// .............................................................................
// .............................................................................

procedimento listar()
Var
   i:inteiro
Inicio
   // A rotina exibe todos os registros da fila e a posi��o de cada entrada.
   para i de 1 ate tamanho faca
      escreval(i," - ",fila[i])
   fimpara

fimprocedimento


// .............................................................................
// .............................................................................
// ..... VAZIA .................................................................
// .............................................................................
// .............................................................................

funcao vazia():logico
Var
   i:inteiro
   resposta:logico
Inicio
   resposta := verdadeiro

   // A fila ser� toda percorrida e caso tenha algum registro a rotina retorna
   // 'falso'.
   para i de 1 ate tamanho faca
      se nao (fila[i]="") entao
         resposta := falso
      fimse
   fimpara
   retorne resposta
fimfuncao

// .............................................................................
// .............................................................................
// .............................................................................
// .............................................................................
// .............................................................................

Var
   fila:vetor[1..25] de caractere
   i:inteiro
   ultimo:inteiro
   tamanho:inteiro
   menu:inteiro

Inicio
   // Controle para certificar que a fila est� vazia.
   ultimo := 1

   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::: FILA ::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   repita
      escreval
      escreval("............................................................")
      escreval("Escolha qual a opera��o desejada:")
      escreval("...[1].. Adicionar")
      escreval("...[2].. Remover")
      escreval("...[3].. Limpar")
      escreval("...[4].. Listar")
      escreval("...[5].. Vazia")
      escreval("...[6].. Fim")
      escreval("............................................................")
      escreva("Menu: ")
      leia(menu)
      //escreval("................................................")

      escolha (menu)

      caso 1
         //limpatela
         escreval("=================================================================")
         escreval("Deseja adicionar quantos dados?")
         escreval("Lembre-se: O limite da fila � de 25 posi��es.")
         leia(tamanho)
         escreval(adicionar())

      caso 2
         escreval("=================================================================")
         escreval("Remover o elemento '",remover(),"' na posi��o '", (i),"' da fila")

      caso 3
         limpatela
         escreval("=================================================================")
         escreval("Limpando a fila... ")
         limpar()

      caso 4
         limpatela
         escreval("=================================================================")
         escreval("Os elementos gravados na lista: ")
         listar()

      caso 5
         limpatela
         escreval("=================================================================")
         escreval("A lista est� vazia? ", vazia())

      fimescolha

   ate (menu = 6)
   escreval(":::::::::::::::::::::::::: FIM :::::::::::::::::::::::::::::")

Fimalgoritmo