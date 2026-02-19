# language: pt

Funcionalidade: Configuração de Produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto
  Para adicionar ao carrinho conforme minha preferência

  Contexto:
    Dado que estou na página de detalhes do produto

  Cenário: Deve exigir seleção obrigatória de cor, tamanho e quantidade
    Quando eu tentar adicionar o produto ao carrinho sem selecionar cor, tamanho ou quantidade
    Então o sistema deve exibir mensagem informando que todos os campos são obrigatórios

  Cenário: Deve permitir no máximo 10 unidades por venda
    Quando eu selecionar 11 unidades do produto
    Então o sistema deve exibir mensagem informando "Quantidade máxima permitida é 10"

  Cenário: Deve limpar as seleções ao clicar no botão limpar
    Dado que eu selecionei cor, tamanho e quantidade
    Quando eu clicar no botão "Limpar"
    Então o sistema deve restaurar os campos para o estado inicial
