Algoritmo "UC4 SA2 A4 C�lculo de juros simples"

// Descri��o  : C�lculo de juros. O usu�rio determina um per�odo, em meses, e
//            calcula o valor da taxa de juros simples. Ao fim ser� dado o
//            valor 'a pagar' de cada m�s.
// Autor(a)   : Aline Pollis
// Data atual : 01/02/2021

// Se��o de Declara��es das vari�veis
Var
valor: real;
taxa: real;
vpagar: real;
periodo: inteiro;
j: inteiro;

// Entrada de dados do usu�rio
Inicio
escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::: CALCULO DE JUROS SIMPLES ::::::::::::::::::::::")
escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval

//Entrada de dados feito pelo usu�rio
escreva ("Valor principal: R$ ")
leia(valor)
escreva ("Taxa de juros: ")
leia(taxa)
escreva ("Per�odo: ")
leia(periodo)

vpagar := valor

    //Estrutura de repeti��o
    para j:=1 ate periodo faca
    vpagar := vpagar + vpagar*taxa
    escreval(j:periodo, " ", vpagar:1:2)
    fimpara

//Valor final com o c�lculo do juros
escreva ("Valor a pagar com juros: R$ ", vpagar:1:2)

Fimalgoritmo