require './create_person'
require './create_book'
require 'date' 


class CreateRental
  def initialize(list)
    @rentals = []
    @persons = list[:persons]
    @books = list[:books] 
  end

  def create_new_rental
    p ' Select a Book number in the list below'
    p @books
    p ' type book number : '
    book_number = gets.chomp
    p 'Select a Person number in the list below'
    @persons
    person_number = gets.chomp
    p ' type the Date in this format, for example: (2000/01/01) : '
    date = conver_date(gets)

    book = @books[book_number.to_i]
    people = @people[person_number.to_i]
    rent = Rental.new(date, book, people)
    @rentals.push(rent)
    p 'Rental has been added successfully!!!'
  end

  def conver_date(date)
    Date.parse(date)
    end 

  def rent_list_by_id
    if @rentals.length.positive?
      p('select Person ID in the List below')
      list_people
      p 'Type person ID:'
      id = gets.chomp

      @rentals.select do |rent|
        if rent.person.id == id.to_i
          p "Date: #{rent.date}, Book '#{rent.book.title}', Author #{rent.book.author}"
        else
          p 'Rental not found for the selected person '
        end
      end
    else
      p 'Rental not found'
    end

  end
end
