class Plant
  def new_plant(stem_type, leaf_type)
    plant = Object.new

    def plant.stem
      stem_type == :fleshy ? "fleshy" : "woody"
    end

    def plant.leaf
      leaf_type == :broad ? "broad" : "needle"
    end

    plant
  end
end