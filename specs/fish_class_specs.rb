require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../fish_class' )

class TestFish < MiniTest::Test

  def setup
    @test_fish = Fish.new( "wanda" )  
  end

  def test_fish
    result = @test_fish.name
    assert_equal( "wanda", result )
    
  end



end
