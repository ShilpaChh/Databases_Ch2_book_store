# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store')

    # # Perform a SQL query on the database and get the result set.
    sql = 'SELECT id, title, author_name FROM books;'
    result = DatabaseConnection.exec_params(sql, [])

    # # Print out each record from the result set .
    book_repository = BookRepository.new
    book = book_repository.find(1)
    puts book.title

    book_repo = BookRepository.new
    book_author = book_repository.find(1) # find author for first book
    puts book.author_name

