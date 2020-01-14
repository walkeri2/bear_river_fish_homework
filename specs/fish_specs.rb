require('minitest/autorun')
require('minitest/reporters')

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestFish < Minitest::Test

  def setup()
    @Fish1 = Fish.new('Trout')
    @Fish2 = Fish.new('Bass')
  end

  def test_fish_has_name()
    assert_equal('Trout', @Fish1.fish_name)
  end 

end
