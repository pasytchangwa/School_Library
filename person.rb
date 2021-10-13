require './corrector'

class Person
  attr_accessor :name, :age
  attr_reader :rentals, :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @corrector = Corrector.new(@name)
    @rentals = []
  end

  def of_age?
    true if @age >= 18
    false
  end

  def can_use_services?
    true if of_age? || @parent_permission
  end

  def validate_name
    @name = @corrector.correct_name
  end
end
