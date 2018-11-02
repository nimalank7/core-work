require 'library'
describe Library do
  it "lists books" do
    library = Library.new
    expect(library.list_books).to eq library.books
  end
  it "adds a book into an array" do
    library = Library.new
    book = {title: 'Code', author: 'Charles Petzgold', subject: 'CS'}
    library.add_book(book)
    expect(library.books.include? book).to eq true
  end
  it "finds a book in the array" do
    library = Library.new
    title = 'Eloquent JavaScript'
    book = {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'}
    expect(library.find_book(title)).to eq book
  end
  it "removes a book from the array" do
    library = Library.new
    title = 'Eloquent JavaScript'
    library.remove_book(title)
    expect(library.find_book(title)).to eq nil
  end
  it "finds all books by a subject" do
    library = Library.new
    subject = 'Ruby'
    books = [{title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'}, {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}]
    expect(library.all_books_by_subject(subject)).to eq books
  end
end
