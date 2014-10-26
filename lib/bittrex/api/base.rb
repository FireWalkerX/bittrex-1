module Bittrex
  module Api
    module Base

      class InvalidApiMethod < StandardError; end

      def get(method, **params)
        begin
          Request.new(send(method, params)).get
        rescue NoMethodError => e
          raise InvalidApiMethod, e.message
        end
      end

      def post(method, **params)
        begin
          Request.new(send(method, params)).post
        rescue NoMethodError => e
          raise InvalidApiMethod, e.message
        end
      end
    end
  end
end
