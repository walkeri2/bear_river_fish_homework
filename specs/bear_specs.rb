require('minitest/autorun')
require('minitest/reporters')

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestBear < Minitest::Test

  def setup()
    @Bear1 = Bear.new('Yogi')
    @Fish1 = Fish.new('Trout')
    @River1 = River.new('Columbia')
  end

  def test_bear_has_name
    assert_equal('Yogi', @Bear1.bear_name)
  end

  def test_bear_empty_stomach
    assert_equal(0, @Bear1.stomach_count)
  end

  def test_bear_eats_fish
    @River1.add_fish@Fish1
    @Bear1.eats_fish(@River1)
    assert_equal(1, @Bear1.stomach_count)
    assert_equal(0, @River1.river_count())
  end

end
