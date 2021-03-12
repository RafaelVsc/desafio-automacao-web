# language: pt

Funcionalidade: Pesquisar Produto

Cenário: Pesquisar e visaualizar produto
  Dado estar na Home do Automation Practice
  Quando pesquisar o produto "Faded Short Sleeve"
  E clicar no primeiro produto na tela de Resultados
  Então exibir a tela de Detalhes do Produto "Faded Short Sleeve T-shirts"
  E exibir o botão "Add to cart"
