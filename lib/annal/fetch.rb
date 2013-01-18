module Annal
  class Fetch
    attr_accessor :file_identifier
    def initialize(file_identifier)
      self.file_identifier = file_identifier
    end

    def local?
      true
    end

    def data
      IO.read(file_identifier)
    end
  end
end