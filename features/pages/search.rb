class SearchResult
  include Capybara::DSL

  def initialize
    @element_product_card = 'img[alt="Faded Short Sleeve T-shirts"]'
    @elem_product_more = 'a[title="View"]'
  end

  def first_product
    find(@element_product_card).hover
    find(@elem_product_more).click
  end

  def click_on_product(value)
    first("a.product-name[title='#{value}']").hover
    find(@elem_product_more).click
  end
end
