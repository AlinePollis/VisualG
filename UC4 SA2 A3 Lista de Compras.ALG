Algoritmo "UC4 SA2 A3 Lista de Compras"

// Descri��o  : Pedido de Compras. Simula um pedido de compras mensal usando a
//            estrutura 'enquanto'.
// Autor(a)   : Aline Pollis
// Data atual : 01/02/2021


Var
produto: caractere;
resp: caractere;
preco_unit: real;
totalped: real;
qtde: inteiro;
j: logico;
cont: caractere;

// Entrada de dados do usu�rio
Inicio
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval(":::::::::::::: SIMULADOR DE LISTA DE COMPRAS :::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval

//Condi��o l�gica
j <- verdadeiro

//Estrutura de repeti��o
enquanto (j = verdadeiro) faca

   //Cadastro do pedido
   escreva ("Produto: ")
   leia (produto)
   escreva ("Pre�o Unit�rio: R$ ")
   leia (preco_unit)
   escreva ("Quantidade: ")
   leia (qtde)

   //C�lculo do total do pedido
   totalped := totalped + preco_unit*qtde

   escreva ("Continua? (S/N)")
   leia (cont)
   escreval("-------------------------------")
   
      //Condi��o para repeti��o
      se (cont = "N") entao
      j <- falso
      escreval("-------------------------------")
      fimse
      
   fimenquanto

//Total do valor do pedido
escreval ("O total do pedido � R$ ", totalped:1:2)
escreval("-------------------------------")
escreval("-------------------------------")

Fimalgoritmo