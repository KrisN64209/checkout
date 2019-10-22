require './lib/checkout.rb'

describe Checkout do
  let (:a_checkout) {Checkout.new}
  it 'can show the price of an item' do
    expect(a_checkout.check_price('Bread')).to eq "£2.00"
  end
  it 'can scan an item' do
    a_checkout.scan('Bread')
    expect(a_checkout.scanned_items.length).to eq 1
  end
  it 'can give a total for all items scanned' do
    a_checkout.scan('Bread')
    a_checkout.scan('Milk')
    expect(a_checkout.give_total).to eq "£3.00"
  end
end