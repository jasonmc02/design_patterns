class ArrayIterator
  attr_accessor :array, :index

  def initialize(array)
    @array = array
    @index = 0
  end

  def has_index?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end

  def for_each_element(array)
    i = 0
    while i < array.length
      yield(array[i])
      i += 1
    end
  end
end
