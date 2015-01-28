module Bittrex
  module Api
    class Response
      attr_reader :data, :results, :message

      def initialize(data)
        @data = JSON.load(data)
        @results = @data.fetch('result')
        @success = @data.fetch('success')
        @message = @data.fetch('message')
      end

      def success?
        @success
      end
    end
  end
end
