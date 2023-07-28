class SimpleLogger
  attr_accessor :level

  ERROR = 1
  WARNING = 2
  INFO = 3

  @@instance = SimpleLogger.new
  @log = File.open("log.txt", "w")
  @level = ERROR

  def error
    log.puts(msg)
    log.flush
  end

  def warning(msg)
    log.puts(msg) if @level >= WARNING
    log.flush
  end

  def info(msg)
    log.puts(msg) if @level >= INFO
    log.flush
  end

  def self.instance
    @@instance
  end

  def log
    @log ||= File.open("log.txt", "w")
  end

  private_class_method :new
end

SimpleLogger.instance
SimpleLogger.instance.level = SimpleLogger::WARNING
SimpleLogger.instance.warning("This is a warning.")
