module Annal
  class Collection
    attr_accessor :dir
    def initialize(dir)
      self.dir = dir
    end

    def file_paths(glob_match = '*')
      Dir.glob("#{dir}/#{glob_match}").select {|path| File.file?(path) }
    end

    def documents
      file_paths.collect {|fp| Document.find(fp) }
    end
  end
end
