require_relative 'minitest_helper'

class TestFetchLocalFileIntegration < MiniTest::Unit::TestCase
  def subject
    Annal::Fetch::LocalFile
  end

  def test_fetch
    read = subject.new("#{Annal.project_root}/test/test.json").read
    assert_match 'development_environment', read
  end

  def test_double_read
    fetch = subject.new("#{Annal.project_root}/test/test.json")
    assert_match 'development_environment', fetch.read
    assert_match 'development_environment', fetch.read
  end

end
