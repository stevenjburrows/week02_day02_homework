require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')

class RiverTest < MiniTest::Test

  def setup
    @river1 = River.new('Clyde')
  end

  def test_get_name
    assert_equal('Clyde', @river1.name)
  end

  def test_number_of_fish_in_river_at_start
    assert_equal(0, @river1.fish_count)  
  end


end
