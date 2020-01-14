require('minitest/autorun')
require('minitest/reporters')

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestRiver < Minitest::Test

  def setup()
    @River1 = River.new('Columbia')
  end

  def test_river_has_name()
    assert_equal('Columbia', @River1.river_name)
  end

  def test_river_can_hold_fish()
    assert_equal(0, @River1.river_count)
  end

  def test_add_fish_to_river
    fish = Fish.new('Trout')
    @River1.add_fish(fish)
    assert_equal(1, @River1.river_count())
  end 


end
