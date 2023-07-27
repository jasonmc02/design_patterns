class Pond
  def initialize(number_animals)
    @ducks = []
    number_animals.times do |i|
      @ducks << Duck.new("Duck #{i}")
    end
  end

  def simulate_one_day
    @ducks.each {|duck| duck.speack }
    @ducks.each {|duck| duck.eat }
    @ducks.each {|duck| duck.sleep }
  end
end

# pond = Pond.new(3)
# pond.simulate_one_day
