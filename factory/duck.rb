class Duck
  def initialize(name)
    @name = name
  end

  def eat
    puts("#{@name} is eating.")
  end

  def speak
    puts("#{@name} says Quack!")
  end

  def sleep
    puts("#{@name} sleeps quietly.")
  end
end
