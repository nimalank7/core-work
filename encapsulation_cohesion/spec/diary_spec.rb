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
end
