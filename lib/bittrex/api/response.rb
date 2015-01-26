module Bittrex
  module Api
    class Response
      attr_reader :data, :results

      def initialize(data)
        @data = JSON.load(data)
        @results = @data.fetch('result')
      end
    end
  end
end
