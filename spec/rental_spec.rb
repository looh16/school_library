require './rental'
require './book'
require './person'

describe Rental do
  context 'When testing the Rental class' do
    it 'Should Create a Rental' do
      person = Person.new(20, 'John')
      book = Book.new('React', 'John')
      rental = Rental.new('2020-10-10', person, book)
      expect(rental.date).to eq('2020-10-10')
    end
  end
end
