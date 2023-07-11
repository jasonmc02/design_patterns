class MixTask < Task
  def initialize
    super("Mix the batter")
  end

  def get_time_required
    3.0
  end
end
