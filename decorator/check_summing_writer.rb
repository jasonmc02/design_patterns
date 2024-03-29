require "./writer_decorator.rb"

class CheckSummingWriter < WriterDecorator
  attr_reader :check_sum

  def initialize(real_writer)
    super(real_writer)
    @check_sum = 0
  end

  def write_line(line)
    line.each_byte { |byte| @check_sum = (@check_sum + byte) % 256 }
    @check_sum += ("\n"[0]).to_i % 256
    @real_writer.write_line("#{line}  - #{@check_sum}")
  end
end
