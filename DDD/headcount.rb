class HeadCount
  attr_reader :heads
  def initialize
    @heads = []
  end
  def total_heads
    @heads.length
  end
  def update_count(value)
    if value == "Heads"
      store_in_heads(value)
    end
    true
  end
  private
  def store_in_heads(value)
    @heads << value
  end
end
