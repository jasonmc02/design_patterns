class Encrypter
  def initialize(key)
    @key = key
  end

  def encrypt(reader, destiny)
    key_index = 0
    while not reader.eof?
      clear_char = reader.getc
      encrypted_char = clear_char ^ @key[key_index]
      writer.putc(encrypted_char)
      key_index = (key_index + 1) % @key.size
    end
  end
end

# encrypter = Encrypter.new("Strong Key")
# reader = StringIOAdapter.new("Hello World")
# writer = File.open("message.encrypted", "w")
# encrypter.encrypt(reader, writer)
