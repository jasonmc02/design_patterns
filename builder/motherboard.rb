class Motherboard
  attr_accessor :cpu, :memory_size

  def initialize(cpu=BasicCPU.new, memory_size=10000)
    @cpu = cpu
    @memory_size = memory_size
  end
end
