require 'item'
require 'checkout'
describe Checkout do
  let(:item) { double :item }
  let(:checkout) {Checkout.new}
  it "scans items into checkout" do
    expect(checkout.scan(item)).to eq true
  end
  it "scans an item and stores it in an array" do
    checkout.scan(item)
    expect(checkout.items).to eq [item]
  end
  it "correctly formats prices into £0.00" do
    expect(checkout.total_price_in_pounds).to eq "£0.00"
  end
  it "correctly displays items <£1 as £0.xx" do
    allow(item).to receive_messages(:price= => 0.20, :price => 0.20)
    checkout.scan(item)
    expect(checkout.total_price_in_pounds).to eq "£0.20"
  end
  it "correct displays items priced at £300.23 as that" do
    allow(item).to receive_messages(:price= => 300.23, :price => 300.23)
    checkout.scan(item)
    expect(checkout.total_price_in_pounds).to eq "£300.23"
  end
end
