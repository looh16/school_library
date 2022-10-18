require './create_person'
require './create_book'
require './create_rental'

class App
  def initialize
    @new_person = CreatePerson.new
    @new_book = CreateBook.new
    @new_rental = CreateRental.new({ persons: @new_persons, books: @new_books }) 
    @output = 0
  end

  def options
    print 'Welcome to School Library App!'
    while @output != 7
      print "\nPlease choose an option by entering a number: \n\n"
      print "1 - List all books\n"
      print "2 - List all people\n"
      print "3 - Create a person\n"
      print "4 - Create a book\n"
      print "5 - Create a rental\n"
      print "6 - List all rentals for a given person id\n"
      print "7 - Exit\n"
      start_app
    end
  end

  def start_app
    @output = gets.chomp.to_i
    case @output
    when 1
      @new_book.list_books
    when 2
      @new_person.list_people
    when 3
      @new_person.create_person
    when 4
      @new_book.create_new_book
    when 5
      @new_rental.create_new_rental
    when 6
      @new_rental.rent_list_by_id
    end
  end
end
