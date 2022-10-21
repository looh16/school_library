require './student'
require './teacher'
require './person'
require './book'
require './rental'
require './classroom'

describe Rental do
  context 'When testing the Rental class' do
    before :each do
      @person = Person.new(20, 'John')
      @book = Book.new('React', 'John')
      @rental = Rental.new('2020-10-10', @person, @book)
    end

    it 'should return instance' do
      expect(@rental).to be_an_instance_of Rental
    end

    it 'check for rental histories' do
      expect(@rental.book.name).to eql 'John'
      expect(@rental.person.title).to eql 'React'
    end
  end
end
