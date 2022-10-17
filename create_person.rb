class Create_Person
     
    
    def initialize
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
        create_teacher(specialization, age.to_i, name)
        p "Teacher #{name} has been added successfully!!!"
      end
    
     
end