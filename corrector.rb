class Corrector
  def initialise(name)
    @name = name
  end

  def correct_name
    @name.capitalise.slice(0, 10)
  end
end
