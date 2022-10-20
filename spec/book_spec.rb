require './book'
require './rental'
require './person'

describe Book do
  context 'When testing the Book class' do
    it 'Should Create a Book' do
      new_book = Book.new('React', 'Jhon')
      expect(new_book.title).to eq('React')
      expect(new_book.author).to eq('Jhon')
    end

    it 'Should Create a Rental' do
        person = Person.new(20, 'John')
        book = Book.new('React', 'Jhon')
        rental = book.add_rental(person, '2020-10-10')
        expect(rental.person.name).to eq('John')
      end

  end
end