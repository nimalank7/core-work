require_relative "./item.rb"

class Checkout
  attr_reader :items
  def initialize
    @items = []
    @total = 0.0 # We are storing in pounds
  end
  def scan(item)
    @items << item
    true
  end

  def total_price_in_pounds
    total_items
    string = @total.to_s
    value = string.index(".") + 1
    if string[value..string.length].length != 2
      return string = "£#{string}0"
    end
    "£#{string}"
  end
  private
  def total_items
      @items.each do |item|
        @total += item.price
      end
      @total
  end
end
