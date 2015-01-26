module Bittrex
  module Api
    module Base

      class InvalidApiMethod < StandardError; end

      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def get(method, **params)
          begin
            Request.new(send(method, params)).get
          rescue NoMethodError => e
            raise InvalidApiMethod, e.message
          end
        end

        private

        def api_key
          "?apikey=#{Bittrex.configuration.key}&nonce=#{Time.now.to_i}"
        end
      end
    end
  end
end
