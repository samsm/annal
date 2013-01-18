require_relative 'minitest_helper'

class TestParse < MiniTest::Unit::TestCase
  def setup
    # @meme = Meme.new
  end

  def json_text
    IO.read('./test/test.json')
  end

  def test_parsing_json
    data = Annal::Parse.new(json_text).data
    assert_kind_of Hash, data
  end

end
