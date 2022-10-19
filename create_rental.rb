require './create_person'
require './create_book'
require './rental'
require 'date'

class CreateRental
  attr_accessor :rentals, :books, :persons

  def initialize(list)
    @rentals = []
    @persons = list[:persons]
    @books = list[:books]
  end

  def create_new_rental
    p 'Select a Book ID in the list below'
    p @books.list_books
    p ' type book number : '
    book_number = gets.chomp
    p 'Select a Person ID in the list below'
    @persons.list_people
    person_number = gets.chomp
    p ' type the Date in this format, for example: (2000/01/01) : '
    date = conver_date(gets)

    book = @books.list_books.select { |_book| @id = book_number.to_i }
    people = @persons.list_people.select { |_person| @id = person_number.to_i }
    @rent = Rental.new(date, book, people)
    @rentals.push(@rent)
    p 'Rental has been added successfully!!!'
  end

  def conver_date(date)
    Date.parse(date)
  end

  def rent_list_by_id
    if @rentals.length.positive?
      p('select Person id in the List below')
      @persons.list_people
      p 'Type person id:'
      id = gets.chomp

      @rentals.select do |rent|
        p rent
        if rent.person == id.to_i
          p "Date: #{rent.date}, Author #{rent.book.author}"
        else
          p 'Rental not found for the selected person '
        end
      end
    else
      p 'Rental not found'
    end
  end
end
