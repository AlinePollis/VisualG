Algoritmo "UC4 SA2 A7 Cadastro em matriz e dados estat�sticos"

// Descri��o  : Leitura de Funcion�rios e dados estat�sticos (meno idade, maior
//            idade, quantos femininos, quantos mascuilinos e total de sal�rio
//            em algoritmo que usa estrutura homog�nea bidimensional (matriz).
// Autor(a)   : Aline Pollis
// Data atual : 01/02/2021

// Se��o de Declara��es das vari�veis
Var
   funcionario: vetor [0..4, 0..4] de caractere;
   nome: caractere
   cargo: caractere
   idade: caractere
   sexo: caractere
   renda:caractere
   
   i: inteiro;
   j: inteiro;
   contF: inteiro;
   contM: inteiro;
   
   salario: inteiro;
   totalSalario: inteiro;
   maiorIdade: caractere;
   menorIdade: caractere;
   nomeMaior: caractere;
   nomeMenor: caractere;

   // Entrada de dados do usu�rio
Inicio
   nome:= "Nome"
   cargo:= "Fun��o"
   idade:= "Idade"
   sexo:= "Sexo
   renda:= "Sal�rio"
   
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::: CADASTRO DE MATRIZ E DADOS ESTATISTICOS ::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   //........................ENTRADA DE DADOS..............................
   escreval ("Informe os dados do funcion�rio:")
   // Preenchimento dos dados do usu�rio feito pelo usu�rio dentro da matriz.
   para i de 0 ate 4 faca
      // Entre cada "para" a entrada de texto que se repete para
      // cada funcion�rio diferente
      escreval
      escreval("   Nome   |   Fun��o   |   Idade   |   Sexo(f/m)   |   Sal�rio   ")
      escreval("Dados do funcion�rio: ", i+1)
      
      para j de 0 ate 4 faca
      // A estrutura 'se' indicar� qual dado ser� registrado na ordem ap�s <enter>.
         se (j = 0) entao
            escreva(nome,": ")
         fimse

         se (j = 1) entao
            escreva(cargo,": ")
         fimse

         se (j = 2) entao
            escreva(idade,": ")
         fimse

         se (j = 3) entao
            escreva(sexo,": ")
         fimse

         se (j = 4) entao
            escreva(renda,": ")
         fimse
         
         leia (funcionario[i,j])
      fimpara

      escreval //pula uma linha para separar cada funcion�rio
   fimpara

   //..................Visualizar a matriz na tela.........................
   escreval("................................................................")
   escreval("   Nome   |   Fun��o   |   Idade   |   Sexo(f/m)   |   Sal�rio   ")
   para i de 0 ate 4 faca
      escreval  //pular a linha
      para j de 0 ate 4 faca
         escreva(funcionario[i,j]," | ")  //espa�o entre coluna

      fimpara
   fimpara
   //......................................................................


   // Atribui o valor inicial de cada elemento
   menorIdade := funcionario[0,2]
   maiorIdade := funcionario[0,2]
   contF := 0
   contM := 0
   salario := 0
   totalSalario := 0

   //Comando de loop para fazer o levantamento dos dados j� inseridos pelo usu�rio.
   para i de 0 ate 4 faca
      para j de 0 ate 4 faca

         //.......................MAIOR-MENOR IDADE.........................
         // Na rotina busca todos os valores inseridos na coluna j=2 e compara
         // os valores para indicar qual tem maior e menor idade e o respectivo
         // nome.
         se (j = 2) entao

            se (funcionario [i,2] < menorIdade) entao
               menorIdade := funcionario [i,j]
               nomeMenor := funcionario [i,j-2]
            fimse

            se (funcionario [i,2] > maioridade) entao
               maiorIdade := funcionario [i,j]
               nomeMaior := funcionario [i,j-2]
            fimse

         fimse

         //.......................CONTADOR FEM/MASC.........................
         // Na rotina busca todos os valores da coluna j=3 e conta quantos
         // funcion�rios foram declarados como feminino (f) e masculino (m).
         se (j = 3) entao

            se (funcionario [i,3] = "f") entao
               contF := contF + 1
            fimse
            se (funcionario [i,3] = "m") entao
               contM := contM + 1
            fimse

         fimse

         //.......................SAL�RIO.........................
         // Usando as informa��es da coluna j=4 a rotina ir� converter
         // os dados que s�o do tipo caractere para o tipo inteiro usando
         // a fun��o definidda 'caracpnum()' e somar� todos os valores.
         se (j = 4) entao

            se (salario = funcionario[i,4]) entao
                salario <- (caracpnum(funcionario[i,4]))
                totalSalario <- totalSalario + salario
            fimse

         fimse

      fimpara
   fimpara

   //.................................................................

   escreval
   escreval("==================================================")
   escreval("            Dados estat�sticos da empresa")
   escreval("==================================================")
   escreval

   escreval("Menor idade: ", nomeMenor, " - ", menorIdade)
   escreval("Maior idade: ", nomeMaior, " - ", maiorIdade)
   escreval("Sexo feminino: ", contF)
   escreval("Sexo masculino: ", contM)
   escreval("Total sal�rio: ", totalSalario)

fimalgoritmo