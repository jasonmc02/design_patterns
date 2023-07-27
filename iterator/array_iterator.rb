class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
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

  def for_each_element(array) # internal iterator
    i = 0
    while i < array.length
      yield(array[i])
      i += 1
    end
  end
end

arr = ["green", "red", "blue"]
i = ArrayIterator.new(arr)
while i.has_next?
  puts "item: #{i.next_item}"
end
