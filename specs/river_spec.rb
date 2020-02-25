require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup
    @river1 = River.new('Clyde')
    @fish1 = Fish.new('Goldie')
    @fish2 = Fish.new('Jaws')
    @fish = [@fish1, @fish2]
  end

  def test_get_name
    assert_equal('Clyde', @river1.name)
  end

  def test_number_of_fish_in_river_at_start
    assert_equal(0, @river1.fish_count)
  end


  def test_remove_fish
    @river1.fish = @fish
    @river1.remove_fish(@fish2)
    assert_equal(1, @river1.fish_count)
  end

end
