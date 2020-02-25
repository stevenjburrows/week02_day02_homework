require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

class FishTest < MiniTest::Test
def setup
  @fish1 = Fish.new('Goldie')
end

def test_get_name
  assert_equal('Goldie', @fish1.name)

end
end
