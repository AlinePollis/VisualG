Algoritmo "UC4 SA2 A2 Calculadora Simples"
//
//
// Descri��o   : Calculadora com menu de op��o e uso de 'escolha', 'caso' e 'se'.
// Autor(a)    : Aline Pollis
// Data atual  : 04/02/2021

Var
num1: real;
num2: real;
resultado: real;
operacao: inteiro;
cont: caractere;


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::: CALCULADORA SIMPLES ::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
escreval


escreval("Escolha qual a opera��o desejada:")
escreval("...[1].......... Soma ..............")
escreval("...[2]....... Subtra��o ............")
escreval("...[3]..... Multiplica��o ..........")
escreval("...[4]........ Divis�o .............")
escreval("...[5]........ Quadrado ............")
escreval("...[6]........ Pot�ncia ............")
escreval("...[7].......... Seno ..............")
leia(operacao)

escolha operacao
//...[1].......... Soma ..............
        caso 1
     escreval
     escreval("Entre com o primeiro n�mero: ")
     leia(num1)

     escreval("Entre com o segundo n�mero: ")
     leia(num2)

     resultado <- num1 + num2
     escreval("O resultado da opera��o: ", resultado)

     escreval
     escreval("Nova opera��o? S=(Sim)/N=(N�o)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a opera��o desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[2]....... Subtra��o ............
        caso 2
     escreval
     escreval("Entre com o primeiro n�mero: ")
     leia(num1)

     escreval("Entre com o segundo n�mero: ")
     leia(num2)

     resultado <- num1 - num2
     escreval("O resultado da opera��o: ", resultado)

     escreval
     escreval("Nova opera��o? S=(Sim)/N=(N�o)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a opera��o desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[3]..... Multiplica��o ..........
        caso 3
     escreval
     escreval("Entre com o primeiro n�mero: ")
     leia(num1)

     escreval("Entre com o segundo n�mero: ")
     leia(num2)

     resultado <- num1 * num2
     escreval("O resultado da opera��o: ", resultado)

     escreval
     escreval("Nova opera��o? S=(Sim)/N=(N�o)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a opera��o desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[4]........ Divis�o .............
        caso 4
     escreval
     escreval("Entre com o primeiro n�mero: ")
     leia(num1)

     escreval("Entre com o segundo n�mero: ")
     leia(num2)

     resultado <- num1 / num2
     escreval("O resultado da opera��o: ", resultado)

     escreval
     escreval("Nova opera��o? S=(Sim)/N=(N�o)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a opera��o desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[5]........ Quadrado ............
        caso 5
     escreval
     escreval("Entre com o n�mero: ")
     leia(num1)

     resultado <- num1 * num1
     escreval("O resultado da opera��o: ", resultado)

     escreval
     escreval("Nova opera��o? S=(Sim)/N=(N�o)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a opera��o desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[6]........ Pot�ncia ............
        caso 6
     escreval
     escreval("Entre com o primeiro n�mero: ")
     leia(num1)

     escreval("Entre com a pot�ncia: ")
     leia(num2)

     resultado <- num1 ^ (num2)
     escreval("O resultado da opera��o: ", resultado)

     escreval
     escreval("Nova opera��o? S=(Sim)/N=(N�o)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a opera��o desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

//...[7].......... Seno ..............
        caso 7
     escreval
     escreval("Entre com o primeiro n�mero: ")
     leia(num1)

     resultado <- sen (num1 * PI / 180)
     escreval("O resultado da opera��o: ", resultado)

     escreval
     escreval("Nova opera��o? S=(Sim)/N=(N�o)")
     leia(cont)
         se (cont = "S") entao
         escreval("Escolha qual a opera��o desejada:")
         leia(operacao)
         escolha operacao
         fimescolha
         fimse

fimescolha

Fimalgoritmo