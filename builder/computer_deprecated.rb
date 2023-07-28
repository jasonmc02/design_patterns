require "./motherboard.rb"
require "./cpu.rb"
require "./drive.rb"

class ComputerDeprecated
  attr_accessor :display, :motherboard
  attr_reader :drives

  def initialize(display=:crt, motherboard=Motherboard.new, drives=[])
    @display = display
    @motherboard = motherboard
    @drives = drives
  end
end

motherboard = Motherboard.new(BasicCPU.new, 4000)
drives = []
drives << Drive.new(:hard_drive, 300000, true)
drives << Drive.new(:cd, 760, true)
drives << Drive.new(:dvd, 4700, false)
computer = ComputerDeprecated.new(:crt, motherboard, drives)
puts "Display: #{computer.display}, CPU: #{computer.motherboard.cpu.class.name}, Memory: #{computer.motherboard.memory_size}, Drives: #{computer.drives.map(&:type)}"
