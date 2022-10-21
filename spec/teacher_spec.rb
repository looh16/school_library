require './teacher'

describe Teacher do
  context 'When testing the Teacher class' do
    it 'Should Create a Teacher' do
      teacher = Teacher.new(30, 'React', 'John')
      expect(teacher.name).to eq('John')
    end

    it 'Should be able to use the services' do
      teacher = Teacher.new(30, 'John', 'React')
      expect(teacher.can_use_services?).to eq(true)
    end
  end
end