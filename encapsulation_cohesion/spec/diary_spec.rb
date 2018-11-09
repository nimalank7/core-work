require 'diary'
describe SecretDiary do
  let(:secret_diary) {SecretDiary.new}
  it "creates an instance of secret diary" do
    expect(secret_diary.instance_of? SecretDiary).to eq true
  end
  it "initializes entries to the empty array" do
    expect(secret_diary.entries).to eq []
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
  it "adds entries" do
    secret_diary.add_entry("Day 1")
    expect(secret_diary.entries[0]).to eq "Day 1"
  end
  it "gets entries" do
    secret_diary.add_entry("Day 1")
    expect{secret_diary.get_entries}.to output("Day 1\n").to_stdout
  end
end
