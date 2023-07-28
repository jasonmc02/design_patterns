require "./duck.rb"

class PondDeprecated
  def initialize(number_animals)
    @ducks = []
    number_animals.times do |i|
      @ducks << Duck.new("Duck #{i}")
    end
  end

  def simulate_one_day
    @ducks.each {|duck| duck.speak }
    @ducks.each {|duck| duck.eat }
    @ducks.each {|duck| duck.sleep }
  end
end

pond = PondDeprecated.new(3)
pond.simulate_one_day
