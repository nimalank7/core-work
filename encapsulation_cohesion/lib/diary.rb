require_relative "./entries.rb"
class SecretDiary
  attr_reader :entries, :locked
  def initialize(entries = Entries)
    @locked = true
    @entries = entries.new
  end
  def unlock
    @locked = false
  end
  def lock
    @locked = true
  end
  def add_entry(entry)
    raise "Error cannot add entry whilst diary is locked" if @locked
    @entries.add_entry(entry)
  end
  def get_entries
    raise "Error cannot get entries whilst diary is locked" if @locked
    @entries.get_entries
  end
end
