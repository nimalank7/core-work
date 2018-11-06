require 'item'
require 'checkout'
describe Item do
  let(:item) {Item.new}
  let(:checkout) {Checkout.new}
  it "creates a checkout instance" do
    expect(checkout.instance_of? Checkout).to eq true
  end
  it "scans items into checkout" do
    expect(checkout.scan(item)).to eq true
  end
end
