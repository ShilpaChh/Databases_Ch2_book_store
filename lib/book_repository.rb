require_relative './book'
# require_relative 'database_connection'

class BookRepository

    def all
        sql = 'SELECT id, title, author_name FROM books;'
        result_set = DatabaseConnection.exec_params(sql, [])

        books1 = []
        
        result_set.each do |record|
            book_1 = Books.new
            book_1.id = record['id']
            book_1.title = record['title']
            book_1.author_name = record['author_name']
            books1 << book_1
        end 
        return books1
    end

    def find(id)
        sql = 'SELECT id, title, author_name FROM books WHERE id = $1;'
        sql_params = [id]
        result_set = DatabaseConnection.exec_params(sql, sql_params)
        record = result_set[0]

            book = Books.new
            book.id = record['id']
            book.title = record['title']
            book.author_name = record['author_name']

            return book

    end

end