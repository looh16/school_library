require './student'
require './classroom'

describe Classroom do
  context 'When testing the Classroom class' do
    it 'Should Create a Classroom' do
      classroom = Classroom.new('React')
      expect(classroom.label).to eq('React')
    end
  end
end
