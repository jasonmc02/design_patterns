class SlickButton
  attr_accessor :command

  def initialize(command)
    @command = command
  end

  def on_push_button
    @command.execute if @command
  end
end