module Bittrex
  module Api
    module Market
      include Base

      private

      class << self
        def buy_limit(market:, quantity:, rate:)
          'market/buylimit' + api_key + '&market=' + market + '&quantity=' + quantity + '&rate=' + rate
        end

        def buy_market(market:, quantity:)
          'market/buylimit' + api_key + '&market=' + market + '&quantity=' + quantity
        end

        def sell_limit(market:, quantity:, rate:)
          'market/selllimit' + api_key + '&market=' + market + '&quantity=' + quantity + '&rate=' + rate
        end

        def sell_market(market:, quantity:, rate:)
          'market/sellmarket' + api_key + '&market=' + market + '&quantity=' + quantity
        end

        def cancel(uuid:)
          'market/cancel' + api_key + '&uuid=' + uuid
        end

        def open_orders(market: nil)
          'market/getopenorders' + api_key + (market.nil? ? '' : '&market=' + market)
        end
      end
    end
  end
end
