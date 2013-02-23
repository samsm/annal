require_relative 'minitest_helper'

class TestCollectionIntegration < MiniTest::Unit::TestCase
  def collection
    @collection ||= Annal::Collection.new("#{Annal.project_root}/test/*")
  end

  def test_file_paths
    assert_operator collection.file_paths.length, :>, 1
  end

  def test_file_paths
    refute_includes collection.file_paths, "#{Annal.project_root}/test/test-dir"
  end

  def test_documents
    assert_operator collection.documents.length, :>, 1
  end

  def test_glob
    glob_collection = Annal::Collection.new("#{Annal.project_root}/test/*.yml")
    assert_equal ["#{Annal.project_root}/test/test.yml"], glob_collection.file_paths
  end

end