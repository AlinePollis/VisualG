Algoritmo "UC4 SA3 A2 Remover Usu�rio"

// Descri��o   : Remove um usu�rio pelo nome dentro de um vetor. Aplica��o de
//             fun��o e procedimento.
// Autor(a)    : Aline Pollis
// Data atual  : 13/03/2021

// .............................................................................
// .............................................................................
// ..... CADASTRO ..............................................................
// .............................................................................
// .............................................................................

funcao cadastrar(qtde:inteiro):caractere

var
   nome:caractere
   idade:caractere

inicio

   nome := "Nome"
   idade := "Idade"

   // Limita em 10 posi��es a quantide de registro
   se (qtde > 10) entao
      escreval("O limite m�ximo de usu�rios cadastrados � 10.")
      escreval("Deseja cadastrar quantos usu�rios: ")
      leia(qtde)
   fimse

   // No la�o, dependendo da quantidade que o usu�rio
   // inserir, ser�o cadastrados apenas este valor sem
   // ser necess�rio preencher todas as posi��es do vetor.
   para i de 1 ate qtde faca
      escreval
      escreval("Cadastro de",i, " - ",qtde, " usu�rio.")
      // Quando o contador for a coluna 1 ser� pedido o nome do usu�rio
      // e quando o contador estiver na coluna 2 pedir� a idade.
      para j de 1 ate 2 faca

         se j=1 entao
            escreva(nome,": ")
         senao
            escreva(idade,": ")
         fimse

         leia(user[i,j])
      fimpara
   fimpara
fimfuncao

// .............................................................................
// .............................................................................
// ..... LISTAR ................................................................
// .............................................................................
// .............................................................................

procedimento listar()
Inicio
   // O la�o percorrer� todos os vetores e
   // e ser� impresso os dados na tela.
   para i de 1 ate qtde faca
      para j de 1 ate 2 faca

         se (j=1) entao
            escreval("Nome: ",user[i,1])
         senao
            escreval("Idade: ",user[i,2])
         fimse

      fimpara

      escreval("Posi��o: ",i)
      escreval
   fimpara
fimprocedimento

// .............................................................................
// .............................................................................
// ..... BUSCAR USU�RIO ........................................................
// .............................................................................
// .............................................................................

funcao procurar(busca:caractere):caractere
var
   res:logico
Inicio
   //   escreval
   //   escreva("Digite qual nome deseja buscar: ")
   //   leia(busca)

   //  Assumir inicialmente que
   //  a resposta da "busca" seja falsa
   res <- falso

   //  La�o para verificar no vetor se
   //  o valor digitado � o mesmo que o cadastrado
   para i de 1 ate qtde faca
      se (user[i] = busca) entao
         res <- verdadeiro
      fimse
   fimpara

   // Se a "res" for verdadeiro e o usu�rio constar
   // cadastrado ent�o, ser� apresentado o nome,
   // idade e a posi��o no vetor. Caso contr�rio,
   // informar� que o usu�rio n�o est� cadastrado.
   se res ent�o
      escreva(user[i])
      escreva(" - ")
      escreva(user[i,j])
      escreval(" anos")
      escreval("Posi��o: ",i)
   senao
      escreval("Usu�rio n�o cadastrado.")
   fimse

fimfuncao

// .............................................................................
// .............................................................................
// ..... REMOVER USU�RIO .......................................................
// .............................................................................
// .............................................................................

funcao remover(remove:caractere):caractere
var
   p:inteiro
   posicao:logico
   resRemove:logico
Inicio
   resRemove <- falso

   //  La�o para verificar no vetor se
   //  o valor digitado � o mesmo que o cadastrado
   para i de 1 ate qtde faca
      se (user[i] = remove) entao
         resRemove := verdadeiro
         //Limpa o nome j� cadastrado que se deseja excluir
         user[i,1] := ""
         user[i,2] := ""

         // Rotina para redefinir a matriz e mover as linhas desconsiderando
         // a linha que foi apagada anteriormente
         para i de i ate qtde-1 faca
            user[i,1] := user[i+1,1]
            user[i+1,1] := user[qtde+1,1]

            user[i,2] := user[i+1,2]
            user[i+1,2] := user[qtde+1,2]
         fimpara

         // Apaga a linha deslocada
         qtde := qtde -1

         escreval("Usu�rio removido")

         //senao
         //     escreval("Usu�rio n�o cadastrado")
      fimse
   fimpara

fimfuncao
// .............................................................................
// .............................................................................
// .............................................................................
// .............................................................................

var
   user: vetor [1..10,1..2] de caractere
   qtde, i,j: inteiro

   b_nome:caractere

   menu: inteiro
   cont: caractere

   teste:logico

Inicio

   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::: REMOVER USU�RIO :::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   repita
      escreval
      escreval("Escolha qual a opera��o desejada:")
      escreval("...[1].. Cadastrar novo usu�rio ................")
      escreval("...[2].. Listar todos os usu�rios cadastrados ..")
      escreval("...[3].. Buscar nome ...........................")
      escreval("...[4].. Remover ...............................")
      escreval("...[5].. Sair ..................................")
      leia(menu)

      // Compara o valor dado em "menu" com cada situa��o
      // e realizar a rotina conforme cada caso.
      escolha (menu)
      caso 1
         escreval
         escreva("Deseja cadastrar quantos usu�rios: ")
         leia(qtde)
         // Chamando a fun��o
         escreva(cadastrar(qtde))

      caso 2
         escreval
         escreval("Lista dos usu�rios cadastrados:")
         // Chama o procedimento que listar� usu�rios cadastrados
         listar()

      caso 3
         // Chamando a fun��o
         escreval
         escreva("Digite qual nome deseja buscar: ")
         leia(b_nome)

         escreva(procurar(b_nome))

      caso 4
         escreval
         escreval("Qual usu�rio voc� quer remover?")
         leia(b_nome)

         escreva(remover(b_nome))

      fimescolha

   ate (menu = 5)
   escreval(":::::::::::::::::::::    FIM    ::::::::::::::::::::::::::::::")

Fimalgoritmo