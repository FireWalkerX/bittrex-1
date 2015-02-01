module Bittrex
  module Api
    module Base

      class InvalidApiMethod < StandardError; end

      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def get(method, **params)
          Request.new(send(method, params)).get
        end

        private

        def api_key
          "?apikey=#{Bittrex.configuration.key}&nonce=#{Time.now.to_i}"
        end
      end
    end
  end
end
