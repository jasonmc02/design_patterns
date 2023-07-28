require "./computer.rb"
require "./motherboard.rb"
require "./cpu.rb"
require "./drive.rb"

class ComputerBuilder
  attr_reader :computer

  def initialize
    @computer = Computer.new
  end

  def turbo_cpu(has_turbo_cpu=false)
    @computer.motherboard.cpu = TurboCPU.new
  end

  def display=(display)
    @computer.display = display
  end

  def memory_size=(size_in_mb)
    @computer.motherboard.memory_size = size_in_mb
  end

  def add_cd(writer=false)
    @computer.drives << Drive.new(:cd, 760, writer)
  end

  def add_dvd(writer=false)
    @computer.drives << Drive.new(:dvd, 4700, writer)
  end

  def add_hard_disk(size_in_mb)
    @computer.drives << Drive.new(:hard_disk, size_in_mb, true)
  end
end

builder = ComputerBuilder.new
builder.display = :lcd
builder.turbo_cpu
builder.memory_size = 16000
builder.add_cd
builder.add_dvd
builder.add_hard_disk(250000)
computer = builder.computer
puts "Display: #{computer.display}, CPU: #{computer.motherboard.cpu.class.name}, Memory: #{computer.motherboard.memory_size}, Drives: #{computer.drives.map(&:type)}"
