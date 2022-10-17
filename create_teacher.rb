class Create_Teacher 

def create_new_teacher(specialization, age, name)
    teacher = Teacher.new(specialization, age, name)
    return teacher
end

end