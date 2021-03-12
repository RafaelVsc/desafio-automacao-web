class ProductDetails
  include Capybara::DSL

  def initialize
    @elem_product_title = 'h1[itemprop="name"]'
    @elem_product_buttton = '#add_to_cart > button'
    @element_proceed_to_checkout = 'a[title="Proceed to checkout"]'
  end

  def go
    visit '/'
  end

  def details
    find(@elem_product_title).text
  end

  def buy_button
    find(@elem_product_buttton)
  end

  def proceed_checkout
    find(@element_proceed_to_checkout).click
  end
end