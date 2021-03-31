Algoritmo "UC4 SA4 A2 Implementação de Fila"

// Descrição   : Implementação de Fila usando vetor, função e procedimento.
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
   // Será solicitado quantos registros o usuário deseja adicionar, se for
   // requisitado um vetor maior que 25, a rotina pedirá que seja configurado
   // um valor menor.
   se (tamanho > 25) entao
      escreval("Insira um novo valor. A fila possui estouro de 25 posições.")
      leia(tamanho)
   fimse

   // O vetor será preenchido até o valor atribuido para 'tamanho', e
   // também apresentará a posição de cada entrada.
   para i de 1 ate tamanho faca
      escreval
      escreval("Adicionar na posição ",i)
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
   // pelo usuário na fila.
   elemento := fila[1]
   fila[1] := ""	//Aspas vazia pq a saída é caractere.
   ultimo := ultimo - 1

   // Subir os dados de posição .
   para i de 1 ate ultimo faca
      fila[i]:=fila[i+1]
   fimpara

   // O que está embaixo é zerado.
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
   // Percorre o vetor e atribui vazio " " em todas as posições da fila.
   para i de 1 ate tamanho faca
      fila[i] := ""	//Aspas vazia pq a saída é caractere
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
   // A rotina exibe todos os registros da fila e a posição de cada entrada.
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

   // A fila será toda percorrida e caso tenha algum registro a rotina retorna
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
   // Controle para certificar que a fila está vazia.
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
      escreval("Escolha qual a operação desejada:")
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
         escreval("Lembre-se: O limite da fila é de 25 posições.")
         leia(tamanho)
         escreval(adicionar())

      caso 2
         escreval("=================================================================")
         escreval("Remover o elemento '",remover(),"' na posição '", (i),"' da fila")

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
         escreval("A lista está vazia? ", vazia())

      fimescolha

   ate (menu = 6)
   escreval(":::::::::::::::::::::::::: FIM :::::::::::::::::::::::::::::")

Fimalgoritmo