# language: pt

Funcionalidade: Comprar

Cenário: Pesquisar, visualizar e comprar produto
  Dado estar na Home do Automation Practice
  Quando navegar pelo menu "WOMEN"
  E clicar na opção "Summer Dresses"
  E clicar no produto "Printed Chiffon Dress" na tela de Resultados
  Então exibir a tela de Detalhes do Produto "Printed Chiffon Dress"
  E clicar no botão "Add to cart"
  E exibir a tela do carrinho com o produto "Printed Chiffon Dress"
