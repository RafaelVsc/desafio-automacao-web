class OrderPage
  include Capybara::DSL

  def check_product_on_cart
    find('p.product-name > a').text
  end
end
