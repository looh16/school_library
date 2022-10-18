require './book'

class CreateBook
  def initialize
    @books = []
  end

  def create_new_book
    p ' type Book Title : '
    title = gets.chomp
    p ' type Book Author : '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    
    p "Book #{title} has been added successfully!!!"
  end

  def list_books
    if @books.length.positive?
      @books.each_with_index do |book, i|
        p " book number: #{i}, ID: #{book.id}, Title: #{book.title}, Author: #{book.author}"
      end
    else
      p 'books not found'
    end
  end
end
