Quando('navegar pelo menu {string}') do |string|
  @home = HomePage.new
  @home.menu(string)
end

Quando('clicar na opção {string}') do |string|
  @home.menu_option(string)
end

Quando('clicar no produto {string} na tela de Resultados') do |string|
  @results = SearchResult.new
  @results.click_on_product(string)
end

Então('clicar no botão {string}') do |string|
  @product_details = ProductDetails.new
  @product_details.buy_button.click
end

Então('exibir a tela do carrinho com o produto {string}') do |string|
  @cart = OrderPage.new
  @product_details.proceed_checkout
  expect(page.title).to eql "Order - My Store"
  expect(@cart.check_product_on_cart).to eql string
end