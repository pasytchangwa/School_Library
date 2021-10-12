class Corrector
  def initialize(name)
    @name = name

  end

  def correct_name
    @name.capitalize.slice(0, 10)
  end
end
