require 'active_support/concern'

module Annal
  class Document
    def self.find(path)
      fetch = Fetch.new(path)
      new(fetch)
    end

    attr_accessor :raw_string, :fetch

    def initialize(file_or_str)
      if file_or_str.respond_to?(:read)
        self.fetch = file_or_str
      else
        self.raw_string = file_or_str
      end
    end

    def text
      fetch && fetch.read or
      raw_string
    end

    def parse
      Parse.new(text)
    end

    def data
      parse.data
    end
  end
end