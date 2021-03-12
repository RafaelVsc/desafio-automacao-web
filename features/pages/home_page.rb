class HomePage
  include Capybara::DSL

  def initialize
    @elem_search_field = '#search_query_top'
    @elem_search_button = 'button[name="submit_search"]'
    @element_menu = '#block_top_menu > ul li'
  end

  def go
    visit '/'
  end

  def search(value)
    find(@elem_search_field).set value
    find(@elem_search_button).click
  end

  def menu(value)
    find(@element_menu, text: value).hover
  end

  def menu_option(value)
    find('a', text: value).click
  end
end
