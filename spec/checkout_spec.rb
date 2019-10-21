require './lib/checkout.rb'

describe Checkout do
  it 'can show the price of an item' do
    a_checkout = Checkout.new
    expect(a_checkout.check_price('Bread')).to eq 2.00
  end

  it 'can scan an item' do
    a_checkout = Checkout.new
    a_checkout.scan('Bread')
    expect(scanned_items.length).to eq 1
  end
end