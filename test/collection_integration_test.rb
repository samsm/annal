require_relative 'minitest_helper'

class TestCollectionIntegration < MiniTest::Unit::TestCase
  def setup
    @collection = Annal::Collection.new("#{Annal.project_root}/test")
  end

  def test_file_paths
    assert_operator @collection.file_paths.length, :>, 1
  end

  def test_file_paths
    refute_includes @collection.file_paths, "#{Annal.project_root}/test/test-dir"
  end

  def test_documents
    assert_operator @collection.documents.length, :>, 1
  end

  def test_glob
    assert_equal ["#{Annal.project_root}/test/test.yml"], @collection.file_paths('*.yml')
  end

end