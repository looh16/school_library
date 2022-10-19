require './create_person'
require './create_book'
require './create_rental'

class App
  def initialize
    @new_person = CreatePerson.new
    @new_book = CreateBook.new
    @new_rental = CreateRental.new({ persons: @new_person, books: @new_book })
    @output = 0
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
