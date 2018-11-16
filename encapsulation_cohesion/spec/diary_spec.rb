require 'diary'
describe SecretDiary do
  let(:secret_diary) {SecretDiary.new}
  it "creates an instance of secret diary" do
    expect(secret_diary.instance_of? SecretDiary).to eq true
  end

  it "initializes locked instance variable to true" do
    expect(secret_diary.locked).to eq true
  end
  it "unlocks the diary" do
    expect{secret_diary.unlock}.to change{secret_diary.locked}.from(true).to(false)
  end
  it "locks the diary" do
    secret_diary.unlock
    expect{secret_diary.lock}.to change{secret_diary.locked}.from(false).to(true)
  end
  it "adds entries when unlocked" do
    secret_diary.unlock
    secret_diary.add_entry("Day 1")
    expect(secret_diary.entries.entry_log[0]).to eq "Day 1"
  end
  it "gets entries when unlocked" do
    secret_diary.unlock
    secret_diary.add_entry("Day 1")
    expect{secret_diary.get_entries}.to output("Day 1\n").to_stdout
  end
  it "raises error when adding an entries when locked" do
    expect{secret_diary.add_entry("Day 1")}.to raise_error("Error cannot add entry whilst diary is locked")
  end
  it "raises error when getting entries when locked" do
    expect{secret_diary.get_entries}.to raise_error("Error cannot get entries whilst diary is locked")
  end
end
