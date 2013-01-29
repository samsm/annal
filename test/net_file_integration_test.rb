require_relative 'minitest_helper'

class TestFetchNetFileIntegration < MiniTest::Unit::TestCase
  def subject
    Annal::Fetch::NetFile
  end

  def test_fetch
    read = subject.new(json_url).read
    assert_match 'development_environment', read
  end

  def test_double_read
    fetch = subject.new(json_url)
    assert_match 'development_environment', fetch.read
    assert_match 'development_environment', fetch.read
  end

  # def test_crazy_pants
  #   stub_rest_client!
  # end

end
