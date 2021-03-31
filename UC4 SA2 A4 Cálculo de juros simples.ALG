Algoritmo "UC4 SA2 A4 Cálculo de juros simples"

// Descrição  : Cálculo de juros. O usuário determina um período, em meses, e
//            calcula o valor da taxa de juros simples. Ao fim será dado o
//            valor 'a pagar' de cada mês.
// Autor(a)   : Aline Pollis
// Data atual : 01/02/2021

// Seção de Declarações das variáveis
Var
valor: real;
taxa: real;
vpagar: real;
periodo: inteiro;
j: inteiro;

// Entrada de dados do usuário
Inicio
escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::: CALCULO DE JUROS SIMPLES ::::::::::::::::::::::")
escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval

//Entrada de dados feito pelo usuário
escreva ("Valor principal: R$ ")
leia(valor)
escreva ("Taxa de juros: ")
leia(taxa)
escreva ("Período: ")
leia(periodo)

vpagar := valor

    //Estrutura de repetição
    para j:=1 ate periodo faca
    vpagar := vpagar + vpagar*taxa
    escreval(j:periodo, " ", vpagar:1:2)
    fimpara

//Valor final com o cálculo do juros
escreva ("Valor a pagar com juros: R$ ", vpagar:1:2)

Fimalgoritmo