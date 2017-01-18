require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')


class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Salmon")
  end

  def test_fish_name
    assert_equal("Salmon", @fish.name)
  end

end