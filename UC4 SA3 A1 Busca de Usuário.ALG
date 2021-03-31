Algoritmo "UC4 SA3 A1 Busca de Usuário"

// Descrição   : Busca de um usuário pelo nome usando função e procedimento.
// Autor(a)    : Aline Pollis
// Data atual  : 02/03/2021


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

   // Limita em 10 posições a quantide de registro
   se (qtde > 10) entao
      escreval("O limite máximo de usuários cadastrados é 10.")
      escreval("Deseja cadastrar quantos usuários: ")
      leia(qtde)
   fimse

   // No laço, dependendo da quantidade que o usuário
   // inserir, serão cadastrados apenas este valor sem
   // ser necessário preencher todas as posições do vetor.
   para i de 1 ate qtde faca
      escreval
      escreval("Cadastro de",qtde, " usuário.")
      // Quando o contador for a coluna 1 será pedido o nome do usuário
      // e quando o contador estiver na coluna 2 pedirá a idade.
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
   // O laço percorrerá todos os vetores e
   // e será impresso os dados na tela.
   para i de 1 ate qtde faca
      para j de 1 ate 2 faca

         se (j=1) entao
            escreval("Nome: ",user[i,1])
         senao
            escreval("Idade: ",user[i,2])
         fimse

      fimpara

      escreval("Posição: ",i)
      escreval
   fimpara
fimprocedimento
// .............................................................................
// .............................................................................
// ..... BUSCAR USUÁRIO ........................................................
// .............................................................................
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

   //  Laço para verificar no vetor se
   //  o valor digitado é o mesmo que o cadastrado
   para i de 1 ate qtde faca
      se (user[i] = busca) entao
         res <- verdadeiro
      fimse
   fimpara

   // Se a "res" for verdadeiro e o usuário constar
   // cadastrado então, será apresentado o nome,
   // idade e a posição no vetor. Caso contrário,
   // informará que o usuário não está cadastrado.
   se res então
      escreva(user[i])
      escreva(" - ")
      escreva(user[i,j])
      escreval(" anos")
      escreval("Posição: ",i)
   senao
      escreval("Usuário não cadastrado.")
   fimse

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

Inicio

   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::: BUSCA DE USUÁRIO :::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
   escreval

   repita
      escreval
      escreval("Escolha qual a operação desejada:")
      escreval("...[1].. Cadastrar novo usuário ................")
      escreval("...[2].. Listar todos os usuários cadastrados ..")
      escreval("...[3].. Buscar nome ...........................")
      escreval("...[4].. Sair ..................................")
      leia(menu)

      escolha menu

      caso 1
         escreval
         escreva("Deseja cadastrar quantos usuários: ")
         leia(qtde)
         // Chamando a função
         escreva(cadastrar(qtde))


      caso 2
         escreval
         escreval("Lista dos usuários cadastrados:")
         // Chama o procedimento que listará usuários cadastrados
         listar()


      caso 3
         // Chamando a função
         escreval
         escreva("Digite qual nome deseja buscar: ")
         leia(b_nome)

         escreva(procurar(b_nome))
      fimescolha

   ate (menu = 4)
   escreval("....................... FIM ...................")



Fimalgoritmo


