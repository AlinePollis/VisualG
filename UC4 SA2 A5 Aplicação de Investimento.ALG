Algoritmo "UC4 SA2 A5 Aplicação de Investimento"

// Descrição  : Simulador de aplicação de Investimento usando estrutura de
//            repetição 'enquanto' e 'para'. Ao fim será exibido o cálculo
//            de investimento no período de um ano.
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

// Entrada de dados feito pelo usuário
escreva ("Valor inicial de investimento: R$ ")
leia(valor)

escreva ("Valor mensal de depósito: R$ ")
leia(valor_dep)

escreva ("Taxa de juros: ")
leia(taxa)

// Atribuição de valores iniciais das variáveis
j := 1
periodo := 12
continua := verdadeiro

    // Estrutura de repetição
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