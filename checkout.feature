# language: pt

Funcionalidade: Cadastro no Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na tela de cadastro do checkout

  Cenário: Cadastro realizado com sucesso
    Quando eu preencher todos os campos obrigatórios com dados válidos
    E clicar no botão "Finalizar"
    Então o sistema deve concluir o cadastro com sucesso

  Cenário: Não deve permitir e-mail com formato inválido
    Quando eu preencher o campo e-mail com "email_invalido"
    E clicar no botão "Finalizar"
    Então o sistema deve exibir mensagem "E-mail inválido"

  Cenário: Não deve permitir campos obrigatórios vazios
    Quando eu tentar finalizar o cadastro com campos obrigatórios vazios
    Então o sistema deve exibir mensagem informando que os campos obrigatórios devem ser preenchidos
