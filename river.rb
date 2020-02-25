class River

  attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = []

  end

  def fish_count
    return @fish.count

  end

end
