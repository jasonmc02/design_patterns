require "./command.rb"

class DeleteFile < Command
  def initialize(path)
    super("Delete File: #{path}")
    @path = path
  end

  def execute
    File.delete(@path)
  end
end
