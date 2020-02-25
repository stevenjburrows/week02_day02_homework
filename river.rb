class River
  attr_accessor :fish
  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []

  end

  def fish_count
    return @fish.count
  end

  def remove_fish(fish_name)
    @fish.delete(fish_name)
  end


end
