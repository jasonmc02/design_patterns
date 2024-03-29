require "./writer_decorator.rb"

class TimeStampingWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
  end

  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end
