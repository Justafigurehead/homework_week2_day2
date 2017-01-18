require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')


class TestBear < MiniTest::Test

  def setup
    #--- Bear
    @bear = Bear.new("Yogi")
    #--- River
    @river = River.new("River Dee")
    #---- Fish
    @fish_1 = Fish.new("Salmon")
    @fish_2 = Fish.new("Moby Dick")
  end


#------- Tests

  def test_name
    assert_equal("Yogi", @bear.name)
  end

  def test_count_bears_food
    assert_equal(0,@bear.count_food())
  end

   def test_bear_takes_fish
    @river.gain_fish(@fish_1)
    @river.gain_fish(@fish_2)
    @bear.takes_fish(@fish_1)
    assert_equal(1,@bear.count_food())
  end 

  def test_bear_takes_fish_river_loses
    @river.gain_fish(@fish_1)
    assert_equal(1,@river.count_fish())

    @bear.eats_fish(@river)
    assert_equal(1, @bear.count_food())
    assert_equal(0, @river.count_fish())
  end
end