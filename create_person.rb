require './create_teacher'
require './create_student'

class CreatePerson
  def initialize
    @new_teacher = CreateTeacher.new
    @new_student = CreateStudent.new
    @people = []
  end

  def create_person
    p 'For student type (1), for teacher tyep (2)'
    input = gets.chomp
    case input.to_i
    when 1
      create_student_option
    when 2
      create_teacher_option
    else
      p 'invalid input!!! For student type (1), for teacher tyep (2)'
    end
  end

  def create_student_option
    p ' type student Name : '
    name = gets.chomp
    p ' type student Age : '
    age = gets.chomp
    p ' type student Classroom <number> : '
    classroom = gets.chomp
    parent_permission = true
    permission?(parent_permission)
    student = @new_student.create_new_student(classroom.to_i, age.to_i, name, parent_permission)
    @people.push(student)
    p " student #{name} has been added successfully!!!"
  end

  def create_teacher_option
    p 'type teacher name:'
    name = gets.chomp
    p 'type teacher age:'
    age = gets.chomp
    p 'type teacher specialization:'
    specialization = gets.chomp
    teacher = @new_teacher.create_new_teacher(specialization, age.to_i, name)
    @people.push(teacher)
    p "Teacher #{name} has been added successfully!!!"
  end

  def permission?(parent_permission)
    p 'Has parent permission? type Y to yes and N to no: '
    permission = gets.chomp
    case permission
    when 'n', 'N'
      !parent_permission
    when 'y', 'Y'
      parent_permission
    else
      permission?(parent_permission)
    end
  end

  def list_people
    if @people.length.positive?
      @people.each_with_index do |person, i|
        p "person number: #{i}, ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
      end
    else
      p 'persons not found'
    end
  end
end
