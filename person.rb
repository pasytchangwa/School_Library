require_relative 'corrector'

class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age:, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def can_use_services?
    true if of_age? || @parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  private

  def of_age?
    true if @age >= 18
    false
  end

  def to_s
    "Name: #{@name}, ID: #{@id}, Age: #{@age}"
  end
end
