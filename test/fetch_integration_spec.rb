require_relative 'minitest_helper'

class TestFetchIntegration < MiniTest::Unit::TestCase

  def test_fetch
    read = Annal::Fetch.new("#{Annal.project_root}/test/test.json").read
    assert_match 'development_environment', read
  end

  def test_double_read
    fetch = Annal::Fetch.new("#{Annal.project_root}/test/test.json")
    assert_match 'development_environment', fetch.read
    assert_match 'development_environment', fetch.read
  end

end
