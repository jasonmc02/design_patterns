class DuckPond < Pond
  def new_animal(name)
    Duck.new(name)
  end
end
