class SimpleWriter
  def initialize(path)
    @file = File.open(path, "w")
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def close
    @file.close
  end
end

# writer = CheckSummingWriter.new(
#   TimeStampingWriter.new(
#     NumberingWriter.new(
#       SimpleWriter.new("final.txt")
#     )
#   )
# )
# writer.write_line("Hello world!")
