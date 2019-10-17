require './lib/checkout.rb'

describe Checkout
  it 'can show the price of an item' do
    a_checkout = Checkout.new
    expect(a_checkout.check_price('Bread')).to eq ({ price: 2 })
  end
end