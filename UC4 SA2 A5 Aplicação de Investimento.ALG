Algoritmo "UC4 SA2 A5 Aplica��o de Investimento"

// Descri��o  : Simulador de aplica��o de Investimento usando estrutura de
//            repeti��o 'enquanto' e 'para'. Ao fim ser� exibido o c�lculo
//            de investimento no per�odo de um ano.
// Autor(a)   : Aline Pollis
// Data atual : 01/02/2021


Var
valor: real;
taxa: real;
valor_dep: real;
periodo: inteiro;
j: inteiro;
resp: caractere;
continua: logico;


Inicio
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval(":::::::::::::::: SIMULADOR DE INVESTIMENTO :::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval

// Entrada de dados feito pelo usu�rio
escreva ("Valor inicial de investimento: R$ ")
leia(valor)

escreva ("Valor mensal de dep�sito: R$ ")
leia(valor_dep)

escreva ("Taxa de juros: ")
leia(taxa)

// Atribui��o de valores iniciais das vari�veis
j := 1
periodo := 12
continua := verdadeiro

    // Estrutura de repeti��o
enquanto continua faca
    para j<-1 ate periodo faca
    valor := valor + valor*taxa + valor_dep
    escreval(j:periodo, " ", valor:1:2)

    se (j>= periodo) entao
    escreval("Deseja simular mais um ano? S/N")
    leia(resp)
         se (resp = "N") entao
         continua <- falso
         fimse
    fimse

   fimpara
fimenquanto

Fimalgoritmo