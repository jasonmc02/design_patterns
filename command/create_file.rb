require "./command.rb"

class CreateFile < Command
  def initialize(path, contents)
    super("Create File: #{path}")
    @path = path
    @contents = contents
  end

  def execute
    f = File.open(@path, "w")
    f.write(@contents)
    f.close
  end
end
