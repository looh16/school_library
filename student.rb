class Student < Person
  attr_reader :id
  attr_accessor :classroom

  def initialize(classroom)
    super()
    @id = Random.rand(1..1000)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
