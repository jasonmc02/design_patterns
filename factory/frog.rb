class Frog
  def initialize(name)
    @name = name
  end

  def eat
    puts("#{@name} is eating.")
  end

  def speak
    puts("#{@name} says Croak!")
  end

  def sleep
    puts("#{@name} doesn't sleep; he croaks all night!")
  end
end
