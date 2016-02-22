require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../river_class.rb' )

class TestRiver < MiniTest::Test

  def setup
    @TestRiver = River.new([ 'nemo', 'john' ], "Test River")
  end

  def test_fish_in_river
    result = @TestRiver.contents_of_river
    assert_equal([ 'nemo', 'john' ], result )
  end



end
