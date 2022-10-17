require './create_teacher'

class Create_Person
     
    
    def initialize
        @new_teacher = Create_Teacher.new
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
        create_student(classroom.to_i, age.to_i, name, parent_permission)
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