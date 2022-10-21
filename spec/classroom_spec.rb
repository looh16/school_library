require './classroom'

describe Classroom do
  context 'When testing the Classroom class' do
    classroom = Classroom.new('React')

    it 'should have a label' do
      expect(classroom.label).to eq('React')
    end

    it 'should return instance' do
      expect(classroom).to be_an_instance_of(Classroom)
    end
  end
end
