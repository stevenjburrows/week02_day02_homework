class Bear
  attr_accessor :stomach
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_contents
    return @stomach.count

  end

  def eat_fish(fish)
    @stomach << fish
  end

  def roar
    return 'Roar'

  end

end
