require 'yaml'

module Annal
  class Parse
    attr_accessor :raw_data
    def initialize(raw_data)
      self.raw_data = raw_data
    end

    def data
      parse_yaml
    end

    # Also parses JSON
    def parse_yaml
      YAML.load(raw_data)
    end
  end
end