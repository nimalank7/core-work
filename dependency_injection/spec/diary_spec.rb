require "diary"
describe Diary do
  let(:entry_class){double :entry_class, new: entry}
  let(:entry){double :entry, title: "Entry 1", body: "Hello, world"}
  it "displays 'Entry 1'" do
    diary = Diary.new
    diary.add("Entry 1", "Hello, world", entry_class)
    expect(diary.index).to eq "Entry 1"
  end
end
