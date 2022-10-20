require './book'
require './create_rental'
require 'json'
require './data/data_write'
require './data/data_read'

class CreateBook
  def initialize
    file = File.open('./data/books.json')
    @books = File.read('./data/books.json').split
    file.close
  end

  def create_new_book
    p ' type Book Title : '
    title = gets.chomp
    p ' type Book Author : '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    File.write('books.json', @books)
    p "Book #{title} has been added successfully!!!"
    save_books(@books)
  end

  def list_books
    if @books.length.positive?
      @books.each_with_index do |_book, _i|
        p(@id.to_s)
      end
    else
      p 'books not found'
    end
  end
end
