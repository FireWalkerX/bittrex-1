module Bittrex
  module Api
    class Response
      attr_reader :data

      def initialize(data)
        @data = JSON.load(data)
      end

      def response
        @response = data.fetch('result')
      end
    end
  end
end
