class Rental
  belongs_to :student
  belongs_to :book

  attr_accessor :date

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end
end
