require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')


class TestRiver < MiniTest::Test


#---- setup
  def setup
    # River class
    @river = River.new("River Dee")
    
    #Fish
    @fish_1 = Fish.new("Salmon")
    @fish_2 = Fish.new("Moby Dick")
  end


#----- Tests
  def test_check_river_name
    assert_equal("River Dee",@river.name)
  end

  def test_count_fish
    assert_equal(0, @river.count_fish())
  end

  def test_river_gains_fish
    @river.gain_fish(@fish_1)
    assert_equal(1, @river.count_fish())
  end

  def test_river_loses_fish
    @river.gain_fish(@fish_1)
    @river.gain_fish(@fish_2)
    @river.loses_fish(@fish_1)
    assert_equal(1,@river.count_fish())
  end

end