require 'book_repository'

RSpec.describe BookRepository do

    def reset_books_table
        seed_sql = File.read('spec/seeds_books.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store' }) # ensure you use test DB here. 
        # This test db is used only for spec files. 
        # Note: When we run ruby app.rb, it uses the main table!
        connection.exec(seed_sql)
    end

    before(:each) do
        reset_books_table
    end

    it "stores an array of books" do
        repo = BookRepository.new

        books = repo.all # Should return all
        expect(books.length).to eq 5 
        expect(books.first.title).to eq 'Nineteen Eighty-Four'
   
    end

    it 'returns a specific book' do
        repo = BookRepository.new
        book = repo.find(1)
        expect(book.id).to eq '1'
    end

    it 'returns the author of the book' do
        repo = BookRepository.new
        book = repo.find(2)
        expect(book.author_name).to eq 'Virginia Woolf'
    end

end