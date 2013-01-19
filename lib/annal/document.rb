require 'active_support/concern'

module Annal
  class Document
    attr_accessor :parse
    def self.find(path)
      @fetch = Fetch.new(path)
      @parse = Parse.new(fetch.data)
    end

    def initialize(data)
      self.parse = Parse.new(data)
    end

    def data
      parse.data
    end
  end
end