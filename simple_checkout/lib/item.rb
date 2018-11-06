=begin
Object: Checkout
Method: Scan (which takes an item argument)

=end

class Item
  attr_reader :price
  def initialize
    @price = "£2.00"
  end
end
