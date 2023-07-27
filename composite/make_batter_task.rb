require "./composite_task.rb"
require "./add_dry_ingredients_task.rb"
require "./add_liquids_task.rb"
require "./mix_task.rb"

class MakeBatterTask < CompositeTask
  def initialize
    super("Make batter")
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end

batter = MakeBatterTask.new
puts batter.get_time_required
