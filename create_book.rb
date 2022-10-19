require './book'
require './create_rental'
require 'json'

class CreateBook
  def initialize
    file = File.open("books.json")
    @books = File.read("books.json").split
    file.close
  end

  def create_new_book
    p ' type Book Title : '
    title = gets.chomp
    p ' type Book Author : '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    File.open("books.json", "w") { |f| f.write(@books)}
    p "Book #{title} has been added successfully!!!"
  end

  def list_books
    if @books.length.positive?
      @books.each_with_index do |book, i|
        p ("#{@id}")
      end
    else
      p 'books not found'
    end
  end
end
