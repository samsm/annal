require_relative 'minitest_helper'

class TestAnnalIntegration < MiniTest::Unit::TestCase

  def test_loading_json
    doc = Annal::Document.new(json_text)
    assert_kind_of Hash, doc.data
  end

  def test_loading_yaml
    doc = Annal::Document.new(yaml_text)
    assert_kind_of Hash, doc.data
  end

  def test_find_local
    doc = Annal::Document.find("#{Annal.project_root}/test/test.json")
    assert_kind_of Hash, doc.data
    assert_kind_of Hash, doc.data
  end

  def test_find_net
    doc = Annal::Document.find(json_url)
    assert_kind_of Hash, doc.data
    assert_kind_of Hash, doc.data
  end

end
