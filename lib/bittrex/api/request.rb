module Bittrex
  module Api
    class Request
      attr_reader :base_url, :path

      def initialize(path)
        @base_url = "https://bittrex.com/api/v#{Bittrex.configuration.api_version}/"
        @path = path
      end

      def get
        Response.new(open(full_url))
      end

      def post
        Response.new(open(full_url))
      end

      private

      def full_url
        base_url + path
      end
    end
  end
end
