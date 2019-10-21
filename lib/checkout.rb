class Checkout
  def initialize
    @items = [
      {name: 'Bread', price: 2.00},
      {name: 'Milk', price: 1.00},
      {name: 'Cheese', price: 3.00},
    ]
  end

  def check_price(item_name)
    price_check = @items.find {
      |item| item[:name]== item_name}.values.to_a
    return price_check[1]
  end
end