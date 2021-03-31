Algoritmo "UC4 SA2 A3 Lista de Compras"

// Descrição  : Pedido de Compras. Simula um pedido de compras mensal usando a
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

// Entrada de dados do usuário
Inicio
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval(":::::::::::::: SIMULADOR DE LISTA DE COMPRAS :::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval

//Condição lógica
j <- verdadeiro

//Estrutura de repetição
enquanto (j = verdadeiro) faca

   //Cadastro do pedido
   escreva ("Produto: ")
   leia (produto)
   escreva ("Preço Unitário: R$ ")
   leia (preco_unit)
   escreva ("Quantidade: ")
   leia (qtde)

   //Cálculo do total do pedido
   totalped := totalped + preco_unit*qtde

   escreva ("Continua? (S/N)")
   leia (cont)
   escreval("-------------------------------")
   
      //Condição para repetição
      se (cont = "N") entao
      j <- falso
      escreval("-------------------------------")
      fimse
      
   fimenquanto

//Total do valor do pedido
escreval ("O total do pedido é R$ ", totalped:1:2)
escreval("-------------------------------")
escreval("-------------------------------")

Fimalgoritmo