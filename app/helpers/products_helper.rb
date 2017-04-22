module ProductsHelper

  def print_price(price)
    #format("$%.2f", price) 
    number_to_currency price
  end

  def price=(input)
    input.delete!("$")
    super
  end

 def print_stock(stock)
 	if stock > 0
 		"In Stock"
 	else
 		"Out of Stock"
 	end

  end

end
