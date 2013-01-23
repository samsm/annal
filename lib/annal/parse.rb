require 'yaml'

module Annal
  class Parse
    attr_accessor :raw_data
    def initialize(raw_data)
      self.raw_data = raw_data
    end

    def data
      @data ||= parse_yaml
    end

    def parseable?
      not data.kind_of?(String)
    end

    # Also parses JSON
    def parse_yaml
      begin
        YAML.load(raw_data)
      rescue Psych::SyntaxError
        raw_data
      end
    end
  end
end