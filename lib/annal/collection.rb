module Annal
  class Collection
    attr_accessor :dir, :dir_source
    def initialize(dir)
      self.dir = dir
      self.dir_source = Dir.glob(dir)
    end

    def file_paths
      dir_source.select {|path| File.file?(path) }
    end

    def documents
      file_paths.collect {|fp| Document.find(fp) }
    end
  end
end
