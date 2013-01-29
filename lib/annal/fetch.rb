require 'annal/fetch/local_file'
require 'annal/fetch/net_file'

module Annal
  module Fetch
    def self.new(file_identifier)
      case file_identifier
      when File
        LocalFile.new(file_identifier)
      when %r(https?://)
        NetFile.new(file_identifier)
      else
        LocalFile.new(file_identifier)
      end
    end
  end
end