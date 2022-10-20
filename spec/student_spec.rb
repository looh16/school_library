require './student'

describe Student do
  context 'When testing the Student class' do
    it 'Should Create a Student' do
      student = Student.new('2', 95, 'Jhon')
      expect(student.name).to eq('Jhon')
    end
  end
end