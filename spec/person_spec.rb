require './person'
require './student'
require './teacher'
require './rental'
require './book'

describe Person do
  context 'When testing the Person class' do
    it 'Should Create a Person' do
      person = Person.new(22, 'Jhon')
      expect(person.name).to eq('Jhon')
      expect(person.age).to eq(22)
    end

    it 'Should be instance of Person' do
      person = Person.new(22, 'Jhon')
      expect(person).to be_instance_of(Person)
    end

    it 'Should have a correct name' do
      person = Person.new(22, 'Jhon')
      expect(person.correct_name).to eq('Jhon')
    end

    it 'Should Create a Rental' do
        person = Person.new(20, 'John')
        book = Book.new('React', 'Jhon') 
        rental = Rental.new('2020-10-10', book, self)
        expect(rental.book.title).to eq('React')
      end
  end
end