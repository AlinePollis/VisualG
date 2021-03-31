Algoritmo "UC4 SA2 A7 Cadastro em matriz e dados estatísticos"

// Descrição  : Leitura de Funcionários e dados estatísticos (meno idade, maior
//            idade, quantos femininos, quantos mascuilinos e total de salário
//            em algoritmo que usa estrutura homogênea bidimensional (matriz).
// Autor(a)   : Aline Pollis
// Data atual : 01/02/2021

// Seção de Declarações das variáveis
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

   // Entrada de dados do usuário
Inicio
   nome:= "Nome"
   cargo:= "Função"
   idade:= "Idade"
   sexo:= "Sexo
   renda:= "Salário"
   
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::: CADASTRO DE MATRIZ E DADOS ESTATISTICOS ::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   //........................ENTRADA DE DADOS..............................
   escreval ("Informe os dados do funcionário:")
   // Preenchimento dos dados do usuário feito pelo usuário dentro da matriz.
   para i de 0 ate 4 faca
      // Entre cada "para" a entrada de texto que se repete para
      // cada funcionário diferente
      escreval
      escreval("   Nome   |   Função   |   Idade   |   Sexo(f/m)   |   Salário   ")
      escreval("Dados do funcionário: ", i+1)
      
      para j de 0 ate 4 faca
      // A estrutura 'se' indicará qual dado será registrado na ordem após <enter>.
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

      escreval //pula uma linha para separar cada funcionário
   fimpara

   //..................Visualizar a matriz na tela.........................
   escreval("................................................................")
   escreval("   Nome   |   Função   |   Idade   |   Sexo(f/m)   |   Salário   ")
   para i de 0 ate 4 faca
      escreval  //pular a linha
      para j de 0 ate 4 faca
         escreva(funcionario[i,j]," | ")  //espaço entre coluna

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

   //Comando de loop para fazer o levantamento dos dados já inseridos pelo usuário.
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
         // funcionários foram declarados como feminino (f) e masculino (m).
         se (j = 3) entao

            se (funcionario [i,3] = "f") entao
               contF := contF + 1
            fimse
            se (funcionario [i,3] = "m") entao
               contM := contM + 1
            fimse

         fimse

         //.......................SALÁRIO.........................
         // Usando as informações da coluna j=4 a rotina irá converter
         // os dados que são do tipo caractere para o tipo inteiro usando
         // a função definidda 'caracpnum()' e somará todos os valores.
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
   escreval("            Dados estatísticos da empresa")
   escreval("==================================================")
   escreval

   escreval("Menor idade: ", nomeMenor, " - ", menorIdade)
   escreval("Maior idade: ", nomeMaior, " - ", maiorIdade)
   escreval("Sexo feminino: ", contF)
   escreval("Sexo masculino: ", contM)
   escreval("Total salário: ", totalSalario)

fimalgoritmo