require_relative 'minitest_helper'

class TestAnnalIntegration < MiniTest::Unit::TestCase
  def setup
  end

  def test_loading_json
    doc = Annal::Document.new(json_text)
    assert_kind_of Hash, doc.data
  end

  def test_loading_yaml
    doc = Annal::Document.new(yaml_text)
    assert_kind_of Hash, doc.data
  end

end
