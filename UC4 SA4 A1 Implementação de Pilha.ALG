Algoritmo "UC4 SA4 A1 Implementação de Pilha"

// Descrição   : Implementação de Pilha usando vetor, função e procedimento.
// Autor(a)    : Aline Pollis
// Data atual  : 08/03/2021

// .............................................................................
// .............................................................................
// ..... EMPILHAR ..............................................................
// .............................................................................
// .............................................................................

funcao empilhar():caractere
Var
   nome:caractere
Inicio
   // Será solicitado quantos registros o usuário deseja empilhar, se for
   // requisitado um vetor maior que 20, a rotina pedirá que seja configurado
   // um valor menor.
   se (tamanho > 20) entao
      escreval("Insira um novo valor.")
      leia(tamanho)
   fimse

   // O vetor será preenchido até o valor atribuido para 'tamanho', e
   // também apresentará a posição de cada entrada.
   para i de 1 ate tamanho faca
      escreval
      escreval("Empilhar na posição ",i)
      leia(nome)
      pilha[topo] := nome
      topo := topo + 1
   fimpara
   retorne nome
fimfuncao

// .............................................................................
// .............................................................................
// ..... DESEMPILHAR ...........................................................
// .............................................................................
// .............................................................................

funcao desempilhar():caractere
Var
   elemento:caractere
Inicio
   // A rotina atribui o valor vazio " " para a última que foi preenchida até
   // chegar ao primeiro valor empilhado até a pilha ficar vazia.
   elemento := pilha[topo-1]
   pilha[topo-1] := ""	//Aspas vazia pq a saída é caractere
   topo := topo - 1
   retorne elemento
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
   // Percorre o vetor e atribui vazio " " em todas as posições da pilha.
   para i de 1 ate tamanho faca
      pilha[i] := ""	//Aspas vazia pq a saída é caractere
   fimpara

   topo := 1

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
   // A rotina exibe todos os registros da pilha e a posição de cada entrada.
   para i de 1 ate tamanho faca
      escreval(i," - ",pilha[i])
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

   // A pilha será toda percorrida e caso tenha algum registro a rotina retorna
   // 'falso'.
   para i de 1 ate tamanho faca
      se nao (pilha[i]="") entao
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
   pilha:vetor[0..20] de caractere
   i:inteiro
   topo:inteiro
   tamanho:inteiro
   menu:inteiro

Inicio
   // Controle para certificar que a pilha está vazia.
   topo := 1

   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::: PILHA :::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   repita
      escreval
      escreval("............................................................")
      escreval("Escolha qual a operação desejada:")
      escreval("...[1].. Empilhar")
      escreval("...[2].. Desempilhar")
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
         limpatela
         escreval("=================================================================")
         escreval("Deseja empilhar quantos dados?")
         escreval("Lembre-se: O limite da pilha é de 20 posições.")
         leia(tamanho)
         escreval(empilhar())

      caso 2
         escreval("=================================================================")
         escreval("Desempilhar o elemento '",desempilhar(),"' na posição '", i,"' da pilha")

      caso 3
         limpatela
         escreval("=================================================================")
         escreval("Limpando a pilha... ")
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