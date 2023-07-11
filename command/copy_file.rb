class CopyFile < Command
  def initialize(source, target)
    super("Copy File: #{source} to #{target}")
    @source = source
    @target = target
  end

  def execute
    @contents = File.read(@path) if File.exists?(@path)
    FileUtils.copy(@source, @target)
  end

  def unexecute
    f = File.open(@path, "w")
    f.write(@contents)
    f.close
    File.delete(@target)
  end
end