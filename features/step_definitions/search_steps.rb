Dado('estar na Home do Automation Practice') do
  @home = HomePage.new
  @home.go
  expect(page.title).to eql "My Store"
end

Quando('pesquisar o produto {string}') do |string|
  @home.search(string)
end

Quando('clicar no primeiro produto na tela de Resultados') do
  resultados = SearchResult.new
  resultados.first_product
end

Então('exibir a tela de Detalhes do Produto {string}') do |string|
  @product_details = ProductDetails.new
  expect(page.title).to include "#{string} - My Store"
  expect(@product_details.details).to include string
end

Então('exibir o botão {string}') do |string|
  expect(@product_details.buy_button.text).to eql string
end
