class EnhancedWriter
  attr_reader :check_sum

  def initialize(path)
    @file = File.open(path, "w")
    @check_sum = 0
    @line_number = 1
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def check_sum_write_line(line)
    data.each_byte { |byte| @check_sum = (@check_sum + byte) % 256 }
    @check_sum += "\n"[0] % 256
    write_line(line)
  end

  def timestamp_write_line(line)
    write_line("#{Time.new}: #{line}")
  end

  def number_write_line(line)
    @real_writer.write_line("#{@line_number}: #{line}")
    line_number += 1
  end

  def close
    @file.close
  end
end

writer = EnhancedWriter.new("out.txt")
writer.write_line("A plain line.")
writer.timestamp_write_line("A line with timestamp.")

