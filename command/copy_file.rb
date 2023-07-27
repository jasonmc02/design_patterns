class CopyFile < Command
  def initialize(source, target)
    super("Copy File: #{source} to #{target}")
    @source = source
    @target = target
  end

  def execute
    FileUtils.copy(@source, @target)
  end
end
