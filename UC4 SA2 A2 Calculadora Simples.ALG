Algoritmo "UC4 SA2 A2 Calculadora Simples"
//
//
// Descrição   : Calculadora com menu de opção e uso de 'escolha', 'caso' e 'se'.
// Autor(a)    : Aline Pollis
// Data atual  : 04/02/2021

Var
num1: real;
num2: real;
resultado: real;
operacao: inteiro;
cont: caractere;


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::: CALCULADORA SIMPLES ::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval


escreval("Escolha qual a operação desejada:")
escreval("...[1].......... Soma ..............")
escreval("...[2]....... Subtração ............")
escreval("...[3]..... Multiplicação ..........")
escreval("...[4]........ Divisão .............")
escreval("...[5]........ Quadrado ............")
escreval("...[6]........ Potência ............")
escreval("...[7].......... Seno ..............")
leia(operacao)

escolha operacao
//...[1].......... Soma ..............
        caso 1
     escreval
     escreval("Entre com o primeiro número: ")
     leia(num1)

     escreval("Entre com o segundo número: ")
     leia(num2)

     resultado <- num1 + num2
     escreval("O resultado da operação: ", resultado)

     escreval
     escreval("Nova operação? S=(Sim)/N=(Não)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a operação desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[2]....... Subtração ............
        caso 2
     escreval
     escreval("Entre com o primeiro número: ")
     leia(num1)

     escreval("Entre com o segundo número: ")
     leia(num2)

     resultado <- num1 - num2
     escreval("O resultado da operação: ", resultado)

     escreval
     escreval("Nova operação? S=(Sim)/N=(Não)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a operação desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[3]..... Multiplicação ..........
        caso 3
     escreval
     escreval("Entre com o primeiro número: ")
     leia(num1)

     escreval("Entre com o segundo número: ")
     leia(num2)

     resultado <- num1 * num2
     escreval("O resultado da operação: ", resultado)

     escreval
     escreval("Nova operação? S=(Sim)/N=(Não)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a operação desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[4]........ Divisão .............
        caso 4
     escreval
     escreval("Entre com o primeiro número: ")
     leia(num1)

     escreval("Entre com o segundo número: ")
     leia(num2)

     resultado <- num1 / num2
     escreval("O resultado da operação: ", resultado)

     escreval
     escreval("Nova operação? S=(Sim)/N=(Não)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a operação desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[5]........ Quadrado ............
        caso 5
     escreval
     escreval("Entre com o número: ")
     leia(num1)

     resultado <- num1 * num1
     escreval("O resultado da operação: ", resultado)

     escreval
     escreval("Nova operação? S=(Sim)/N=(Não)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a operação desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[6]........ Potência ............
        caso 6
     escreval
     escreval("Entre com o primeiro número: ")
     leia(num1)

     escreval("Entre com a potência: ")
     leia(num2)

     resultado <- num1 ^ (num2)
     escreval("O resultado da operação: ", resultado)

     escreval
     escreval("Nova operação? S=(Sim)/N=(Não)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a operação desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[7].......... Seno ..............
        caso 7
     escreval
     escreval("Entre com o primeiro número: ")
     leia(num1)

     resultado <- sen (num1 * PI / 180)
     escreval("O resultado da operação: ", resultado)

     escreval
     escreval("Nova operação? S=(Sim)/N=(Não)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a operação desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

fimescolha

Fimalgoritmo