require_relative 'minitest_helper'

class TestParseIntegration < MiniTest::Unit::TestCase

  def test_parsing_json
    data = Annal::Parse.new(json_text).data
    assert_kind_of Hash, data
  end

  def test_parsing_yaml
    data = Annal::Parse.new(yaml_text).data
    assert_kind_of Hash, data
  end

  def test_parsing_text
    data = Annal::Parse.new('Hi there. No format here.').data
    assert_kind_of String, data
  end

  def test_double_parsing
    parse = Annal::Parse.new(json_text)
    assert_kind_of Hash, parse.data
    assert_kind_of Hash, parse.data
  end

end
