require_relative 'minitest_helper'

class TestAnnal < MiniTest::Unit::TestCase
  def setup
    # @meme = Meme.new
  end

  def test_that_kitty_can_eat
    assert_kind_of Module, Annal
  end
end
