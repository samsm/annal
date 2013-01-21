module Annal
  class Fetch
    attr_accessor :path, :file
    def initialize(file_identifier)
      self.file = if file_identifier.respond_to?(:read)
        file_identifier
      else
        File.open(file_identifier)
      end
    end

    def local?
      true
    end

    def read
      file.read
    end
  end
end