class Computer
  attr_accessor :display, :motherboard
  attr_reader :drives

  def initialize(display=:crt, motherboard=Motherboard.new, drives=[])
    @display = display
    @motherboard = motherboard
    @drives = drives
  end
end

# motherboard = Motherboard.new(TurboCPU.new, 4000)
# drives = []
# drives << Drive.new(:hard_drive, 300000, true)
# drives << Drive.new(:cd, 760, true)
# drives << Drive.new(:dvd, 4700, false)
# computer = Computer.new(:lcd, motherboard, drives)
