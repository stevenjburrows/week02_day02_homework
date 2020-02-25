require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new('Poo', :cuddly)
  end

  def test_get_name
    assert_equal('Poo', @bear1.name)
  end

  def test_get_type
    assert_equal(:cuddly, @bear1.type)
  end

  def test_get_stomach_contents_at_start
    assert_equal(0, @bear1.stomach_contents)
  end

end
