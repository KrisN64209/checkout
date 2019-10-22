class Checkout
  attr_reader :items, :scanned_items
  def initialize
    @items = [
      {name: 'Bread', price: 2.00},
      {name: 'Milk', price: 1.00},
      {name: 'Cheese', price: 3.00},
    ]
    @scanned_items = []
  end
  def check_price(item_name)
    price_check = @items.find {
      |item| item[:name]== item_name
    }.values.to_a
    return "£"+('%.2f' % price_check[1]).to_s
  end
  def scan(item_scanned)
    @scanned_items << @items.find {
      |item| item[:name]== item_scanned
    }
  end
  def give_total
    prices = @scanned_items.map{|item| item[:price]}.sum
    return "£"+('%.2f' % prices).to_s
  end
end