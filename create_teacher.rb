require './person'
require './teacher'

class CreateTeacher
  def create_new_teacher(specialization, age, name)
    Teacher.new(specialization, age, name)
  end
end
