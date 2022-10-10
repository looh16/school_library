class Teacher > Person

  attr_reader :id
  attr_accessor :specialization
  
  def initialize(specialization)
    super()
    @id = Random.rand(1..1000)
    @specialization = specialization
  end
  
  def can_use_services?
    return true
  end

end