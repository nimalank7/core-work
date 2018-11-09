class SecretDiary
  attr_reader :entries, :locked
  def initialize
    @entries = []
    @locked = true
  end
  def unlock
    @locked = false
  end
  def lock
    @locked = true
  end
  def add_entry(entry)
    raise "Error cannot add entry whilst diary is locked" if @locked
    @entries << entry
  end
  def get_entries
    raise "Error cannot get entries whilst diary is locked" if @locked
    @entries.each do |entry|
      puts entry
    end
  end
end
=begin
add_entry and get_entries shoud throw an error
as it is initialized to locked
when the user calls lock they throw errors again
methods:
lock
unlock
add_entry
get_entries
=end
