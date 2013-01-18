require 'json'

module Annal
  class Parse
    attr_accessor :raw_data
    def initialize(raw_data)
      self.raw_data = raw_data
    end

    def data
      parse_json || parse_yaml
    end

    def parse_json
      JSON.parse(raw_data)
    end

    def parse_yaml
      YAML.load(raw_data)
    end
  end
end