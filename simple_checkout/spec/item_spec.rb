require 'item'
describe Item do
  let(:item) {Item.new}
  it "see the price" do
    expect(item.price).to eq "£2.00"
  end
end
