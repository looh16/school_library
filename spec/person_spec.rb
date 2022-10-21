require './person'
require './student'
require './teacher'
require './rental'
require './book'

describe Person do
  context 'When testing the Person class' do
    person = Person.new(22, 'Jhon')

    it 'Should be instance of Person' do
      expect(person).to be_instance_of(Person)
    end

    it 'Should have a correct name' do
      expect(person.correct_name).to eq('Jhon')
    end

    it 'Should Create a Rental' do
      book = Book.new('React', 'Jhon')
      rental = Rental.new('2020-10-10', book, self)
      expect(rental.book.title).to eq('React')
    end

    it 'should check if can use service' do
      expect(person.can_use_services?).to eql(true)
    end
  end
end
