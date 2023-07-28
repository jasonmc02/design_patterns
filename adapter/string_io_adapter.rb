require "./encrypter.rb"

class StringIOAdapter
  def initialize(string)
    @string = string
    @position = 0
  end

  def getc
    raise EOFError if eof?
    ch = @string[@position]
    @position += 1
    ch
  end

  def eof?
    @position >= @string.length
  end
end

encrypter = Encrypter.new("Strong Key")
reader = StringIOAdapter.new("Hello World")
writer = File.open("message.encrypted", "w")
encrypter.encrypt(reader, writer)
