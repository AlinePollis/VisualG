Algoritmo "UC4 SA2 A6 Cadastro em matriz 5x5"

// Descri��o  : Cadastro de Funcion�rios. Algoritmo que usa estrutura homog�nea
//            bidimensional (matriz 5x5) para registrar dados pessoais e
//            exibir todas as entradas na tela.
// Autor(a)   : Aline Pollis
// Data atual : 01/02/2021


Var
   funcionario: vetor [1..5, 1..5] de caractere;
   nome: caractere
   cargo: caractere
   idade: caractere
   sexo: caractere
   renda: caractere
   i: inteiro;
   j: inteiro;


Inicio

// Atribui��o de valores para as strings.
   nome := "Nome"
   cargo := "Fun��o"
   idade := "Idade"
   sexo := "Sexo"
   renda := "Sal�rio"

   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::: CADASTRO USU�RIO ::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   escreval ("Informe os dados do funcion�rio:")

   para i de 1 ate 5 faca
      //Entre cada "para" entrada de texto que se repete a cada funcion�rio diferente
      escreval ("Nome | Fun��o | Idade | Sexo | Sal�rio")
      escreval("Dados do funcion�rio: ", i)
      
      para j de 1 ate 5 faca

         // A estrutura 'se' indicar� qual dado ser� registrado na ordem ap�s <enter>.
         se (j = 1) entao
            escreva(nome,": ")
         fimse

         se (j = 2) entao
            escreva(cargo,": ")
         fimse

         se (j = 3) entao
            escreva(idade,": ")
         fimse

         se (j = 4) entao
            escreva(sexo,": ")
         fimse

         se (j = 5) entao
            escreva(renda,": ")
         fimse

         leia (funcionario[i,j])
      fimpara

      escreval //pula uma linha para separar cada usu�rio
   fimpara

   //Visualizar a matriz na tela
   escreval("-----------------------------------------------------")
   escreval ("Nome | Fun��o | Idade | Sexo | Sal�rio")
   para i de 1 ate 5 faca
      escreval  //pular a linha
      para j de 1 ate 5 faca
         escreva(funcionario[i,j]," | ")  //espa�o entre coluna

      fimpara
   fimpara
   escreval

fimalgoritmo