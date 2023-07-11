class Pond
  def initialize(number_animals)
    @animals = []
    number_animals.times do |i|
      @animals << new_animal("Animal#{i}")
    end
  end

  def simulate_one_day
    @animals.each do |animal|
      animal.speak
      animal.eat
      animal.sleep
    end
  end
end