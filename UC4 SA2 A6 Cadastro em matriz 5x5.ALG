Algoritmo "UC4 SA2 A6 Cadastro em matriz 5x5"

// Descrição  : Cadastro de Funcionários. Algoritmo que usa estrutura homogênea
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

// Atribuição de valores para as strings.
   nome := "Nome"
   cargo := "Função"
   idade := "Idade"
   sexo := "Sexo"
   renda := "Salário"

   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::: CADASTRO USUÁRIO ::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   escreval ("Informe os dados do funcionário:")

   para i de 1 ate 5 faca
      //Entre cada "para" entrada de texto que se repete a cada funcionário diferente
      escreval ("Nome | Função | Idade | Sexo | Salário")
      escreval("Dados do funcionário: ", i)
      
      para j de 1 ate 5 faca

         // A estrutura 'se' indicará qual dado será registrado na ordem após <enter>.
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

      escreval //pula uma linha para separar cada usuário
   fimpara

   //Visualizar a matriz na tela
   escreval("-----------------------------------------------------")
   escreval ("Nome | Função | Idade | Sexo | Salário")
   para i de 1 ate 5 faca
      escreval  //pular a linha
      para j de 1 ate 5 faca
         escreva(funcionario[i,j]," | ")  //espaço entre coluna

      fimpara
   fimpara
   escreval

fimalgoritmo