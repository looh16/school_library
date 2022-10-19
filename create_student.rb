require './person'
require './student'

class CreateStudent
  def create_new_student(classroom, age, name, parent_permission)
    Student.new(classroom, age, name, parent_permission: parent_permission)
  end
end
