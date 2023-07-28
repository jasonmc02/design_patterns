require "./pond.rb"
require "./duck.rb"

class DuckPond < Pond
  def new_animal(name)
    Duck.new(name)
  end
end

pond = DuckPond.new(3)
pond.simulate_one_day
