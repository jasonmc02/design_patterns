class SimpleLogger
  attr_accessor :level

  ERROR = 1
  WARNING = 2
  INFO = 3

  def initialize
    @@instance = SimpleLogger.new
    @log = File.open("log.txt", "w")
    @level = WARNING
  end

  def error
    @log.puts(msg)
    @log.flush
  end

  def warning(msg)
    @log.puts(msg) if @level >= WARNING
    @log.flush
  end

  def info(msg)
    @log.puts(msg) if @level >= INFO
    @log.flush
  end

  def self.instance
    @@instance
  end

  private_class_method :new
end