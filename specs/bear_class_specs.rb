require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../bear_class' )

class TestBear < MiniTest::Test

  def setup
    @test_bear = Bear.new( 'test bear', 'brown', 'yam', [] )
  end

  def test_roar
    result = @test_bear.roar
    assert_equal('yam', result)
  end

  def test_fish_in_river
    test_river = [ 'fish1', 'fish2' ]
    result = @test_bear.fish_in_river(test_river)
    assert_equal( ['fish1'], test_river )
    assert_equal( ['fish2'], @test_bear.tummy )
  end



end
