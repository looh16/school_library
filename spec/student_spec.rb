require './student'

describe Student do
  context 'When testing the Student class' do
    it 'Should Create a Student' do
      student = Student.new('2', 95, 'John')
      expect(student.name).to eq('John')
    end
  end
end
