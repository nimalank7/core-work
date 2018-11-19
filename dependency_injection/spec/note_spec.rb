require "note"
describe Note do
  let(:formatter_class) {double :formatter_class, new: note_formatter}
  let(:note_formatter) {double :formatter_class, format: "Title: Entry 1\nHello World!"}
  it "displays Title: Entry 1, Body: Hello World!" do
    note = Note.new("Entry 1", "Hello World!", formatter_class)
    expect(note.display).to eq("Title: Entry 1\nHello World!")
  end
end
