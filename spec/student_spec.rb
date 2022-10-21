require './student'
require './teacher'
require './person'
require './book'
require './rental'
require './classroom'

describe Student do
  context 'When testing the Student class' do
    student = Student.new('2', 95, 'John')

    it 'Should Create a Student' do
      expect(student.name).to eq('John')
    end
  end
end
