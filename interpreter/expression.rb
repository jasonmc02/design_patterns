require "./or.rb"
require "./and.rb"
require "./all.rb"
require "./bigger.rb"
require "./file_name.rb"
require "./not.rb"
require "./writable.rb"

module Expression
  def otherwise(this, other)
    Or.new(this, other)
  end

  def including(this, other)
    And.new(this, other)
  end

  def all
    All.new
  end

  def bigger(size)
    Bigger.new(size)
  end

  def named(pattern)
    FileName.new(pattern)
  end

  def except(expression)
    Not.new(expression)
  end

  def writable
    Writable.new
  end
end

extend Expression

puts otherwise(named("*.pdf"), including(bigger(4500000), except(writable))).evaluate("./assets")

# puts including(bigger(4500000), except(writable)).evaluate("./assets")
# puts including(named("*.pdf"), writable).evaluate("./assets")
# puts otherwise(named("*.pdf"), named("*.docx")).evaluate("./assets")
# puts writable.evaluate("./assets")
# puts all.evaluate("./assets")
