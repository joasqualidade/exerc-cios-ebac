# language: pt

Funcionalidade: Autenticação de Usuário
  Como cliente da EBAC-SHOP
  Quero realizar login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login

  Esquema do Cenário: Validação de autenticação
    Quando eu preencher o campo usuário com "<usuario>"
    E preencher o campo senha com "<senha>"
    E clicar no botão "Entrar"
    Então o sistema deve apresentar "<resultado>"

    Exemplos:
      | usuario            | senha    | resultado                                   |
      | cliente@ebac.com   | 123456   | redirecionamento para a tela de checkout    |
      | cliente@ebac.com   | 000000   | mensagem "Usuário ou senha inválidos"       |
      | invalido@ebac.com  | 123456   | mensagem "Usuário ou senha inválidos"       |
      |                    | 123456   | mensagem "Usuário ou senha inválidos"       |
      | cliente@ebac.com   |          | mensagem "Usuário ou senha inválidos"       |
