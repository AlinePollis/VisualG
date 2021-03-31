Algoritmo "UC4 SA5 A1 Ordenação Bubblesort"

// Descrição   : Ordenação Bubblesort Pilha
// Autor(a)    : Aline Pollis
// Data atual  : 15/03/2021

// .............................................................................
// .............................................................................
// ..... EMPILHAR ..............................................................
// .............................................................................
// .............................................................................

funcao empilhar():inteiro
Var
   num:inteiro
Inicio
   // Será solicitado quantos registros o usuário deseja empilhar, se for
   // requisitado um vetor maior que 9, a rotina pedirá que seja configurado
   // um valor menor.
   se (tamanho > 9) entao
      escreval("Insira um novo valor.")
      leia(tamanho)
   fimse

   // O vetor será preenchido até o valor atribuido para 'tamanho', e
   // também apresentará a posição de cada entrada.
   para i de 1 ate tamanho faca
      escreval
      escreval("Empilhar na posição ",i)
      leia(num)
      senha[topo] := num
      topo := topo + 1
   fimpara
   retorne num
fimfuncao

// .............................................................................
// .............................................................................
// ..... DESEMPILHAR ...........................................................
// .............................................................................
// .............................................................................

funcao desempilhar():inteiro
Var
   elemento:inteiro
Inicio
   // A rotina atribui o valor vazio " " para a última posição que foi
   // preenchida até chegar ao primeiro valor empilhado para a pilha ficar vazia.
   elemento := senha[topo]
   senha[topo] := 0
   topo := topo - 1
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
   // Percorre o vetor e atribui vazio " " em todas as posições da pilha.
   para i de 1 ate tamanho faca
      senha[i] := 0
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
   para i de 1 ate 10 faca
   
   // Rotina para não serem exibidos os valores iguais a 0.
   se nao (senha[i] = 0) entao
      escreval(i," - ",senha[i])
   fimse
   
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
      se (senha[i] > 0) entao
         resposta := falso
      fimse
   fimpara
   retorne resposta
fimfuncao

// .............................................................................
// .............................................................................
// ..... ORDENAR - BUBBLESORT ..................................................
// .............................................................................
// .............................................................................

procedimento bubblesort()
Var
Inicio
   //Rotina para preencher o vetor com números aleatórios.
   //   para i de 0 ate 10 faca
   //      senha[i] := Randi(9)+1
   //   fimpara
   
   para j de tamanho ate 1 passo-1 faca
      para i de 1 ate tamanho faca

           // Compara os valores de 2 em 2 e atribui o valor maior para a
           // variável 'aux' para trocar de posição.
           // Os valores serão ordenados no vetor do menor para o maior.
         se (senha[i] > senha[i+1]) entao
            aux := senha[i]
            senha[i] := senha[i+1]
            senha[i+1] := aux
         fimse
      fimpara
   fimpara

   // Chama o procedimento para listar o vetor.
   escreval("Vetor ordenado: ")
   listar()

fimprocedimento

// .............................................................................
// .............................................................................
// .............................................................................
// .............................................................................
// .............................................................................

Var
   senha:vetor[1..10] de inteiro
   i,j,aux:inteiro
   topo:inteiro
   tamanho:inteiro
   menu:inteiro

Inicio
   // Controle para certificar que a pilha está vazia.
   topo := 1

   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::: BUBBLESORT ::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
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
      escreval("...[6].. Bubblesort")
      escreval("...[7].. Fim")
      escreval("............................................................")
      escreva("Menu: ")
      leia(menu)
      //escreval("................................................")

      escolha (menu)

      caso 1
         //limpatela
         escreval("===========================================================")
         escreval("Deseja empilhar quantos dados?")
         leia(tamanho)
         escreval(empilhar())

      caso 2
         escreval("===========================================================")
         escreval("Desempilhar o elemento '",desempilhar(),"' na posição '", i,"' da pilha")

      caso 3
         //limpatela
         escreval("===========================================================")
         escreval("Limpando a pilha... ")
         limpar()

      caso 4
         limpatela
         escreval("===========================================================")
         escreval("Os elementos gravados na lista: ")
         listar()

      caso 5
         //limpatela
         escreval("===========================================================")
         escreval("A lista está vazia? ", vazia())

      caso 6
         //limpatela
         escreval("===========================================================")
         bubblesort()
      fimescolha

   ate (menu = 7)
   escreval
   escreval(":::::::::::::::::::::::::: FIM :::::::::::::::::::::::::::::")

Fimalgoritmo