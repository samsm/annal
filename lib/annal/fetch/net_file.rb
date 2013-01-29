require 'rest_client'

module Annal
  module Fetch
    class NetFile
      attr_accessor :path, :file
      def initialize(file_identifier)
        self.file = if file_identifier.respond_to?(:read)
          file_identifier
        else
          self.file = RestClient.get(file_identifier)
        end
      end

      def local?
        false
      end

      def read
        @read ||= file.to_str
      end
    end
  end
end