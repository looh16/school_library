def save_persons(peoples)
  @people_list = []
     peoples.each do |person, _index, _id|
      if person.instance_of?(Teacher)
       teacher_object = {

          occupation: 'Teacher',
          name: person.name,
          age: person.age,
          specialization: person.specialization
        }
        @people_list.push(teacher_object)
      else
        student_object ={
          occupation: 'Student',
          name: person.name,
          age: person.age,
          #parent_permission: person.parent_permission
        }
        @people_list.push(student_object)
      end
    end
    File.open('./data/people.json', 'w') do |file|
      file.puts(JSON.pretty_generate(@people_list))
    end
  end
  
  def save_books(books)
    file = File.open('./data/books.json', 'w')
    @book_list = []
    books.each do |book|
      book_object = { title: book.title, author: book.author }
      @book_list.push(book_object)
    end
    file.puts(JSON.generate(@book_list))
  end
  
  def save_rentals(date, person_id, book_id)
    new_data = []
    if File.exist?('./data/rentals.json')
      rents = JSON.parse(File.read('./data/rentals.json'))
      rents.each do |ren|
        new_data.push(ren)
      end
    else
      []
    end
    new_data.push({ Date: date, book_index: book_id, person_index: person_id })
    File.open('./data/rentals.json', 'w') do |file|
      file.puts(JSON.pretty_generate(new_data))
    end
  end