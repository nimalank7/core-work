require 'item'
describe Item do
  let(:item) {Item.new}
  it "see the price" do
    expect(item.price).to eq 20.0 # This test will fail
  end
end
