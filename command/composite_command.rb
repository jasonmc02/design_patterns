require "./command.rb"
require "./create_file.rb"
require "./copy_file.rb"
require "./delete_file.rb"

class CompositeCommand < Command
  def initialize
    @commands = []
  end

  def add_command(cmd)
    @commands << cmd
  end

  def execute
    @commands.each { |cmd| cmd.execute }
  end

  def description
    description = ""
    @commands.each { |cmd| description += cmd.description = "\n" }
    description
  end
end

cmds = CompositeCommand.new
cmds.add_command(CreateFile.new("file_1.txt", "hello world"))
cmds.add_command(CopyFile.new("file_1.txt", "file_2.txt"))
cmds.add_command(DeleteFile.new("file_1.txt"))
cmds.execute
