Algoritmo "UC4 SA2 A1 Cadastro e Controle Simples"


// Descri��o  : Verifica��o do cadastro de clientes com uso de estruturas de
//              controle simples.
//              Um programa que permita a entrada de renda dos clientes e
//              verifique em qual faixa do cadastro o cliente se encaixa para
//              calcular o valor que ele pode comprar. Exiba uma mensagem
//              dizendo em que faixa o cliente se encaixa e qual valor foi
//              aprovado para ele.
// Autor(a)   : Aline Pollis
// Data atual : 01/02/2021


Var
   renda: real;
   compra: real;


Inicio
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::: CADASTRO E CONTROLE SIMPLES :::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   escreval ("Digite a renda do cliente entre R$1.000,00 e R$4.999,99: ")
   leia (renda)

   // Classifica��o de faixa salarial
   se (renda >=1000) e (renda <=2999.99) entao
      escreval ("O cliente est� na faixa 1")
      compra <- renda*0.30;
      escreval ("E pode comprar at� 30% do montante do sal�rio, igual a: ", compra:1:2)
   fimse
   
      se (renda >= 3000) e (renda <= 4999.99) entao
         escreval ("O cliente est� na faixa 2")
         compra <- renda*0.35;
         escreval ("E pode comprar at� 35% do montante do sal�rio, igual a: ", compra:1:2)
      fimse

fimalgoritmo