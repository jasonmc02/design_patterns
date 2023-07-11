class Habitat
  def initialize(number_animals, number_plants, organism_factory)
    @organism_factory = organism_factory

    @animals = []
    number_animals.times do |i|
      @animals << organism_factory.new_animal("Animal#{i}")
    end
    @plants = []
    number_plants.times do |i|
      @plants << organism_factory.new_plant("Plant#{i}")
    end
  end

  def simulate_one_day
    @plants.each do |plant|
      plant.grow
    end
    @animals.each do |animal|
      animal.speak
      animal.eat
      animal.sleep
    end
  end
end
