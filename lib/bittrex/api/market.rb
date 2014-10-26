module Bittrex
  module Api
    class Market
      include Base

      private

      def api_key
        @api_key ||= '?apikey=' + Bittrex.config.key
      end

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

      # ??? NONCE_NOT_PROVIDED ???
      def open_orders(market: nil)
        'market/getopenorders' + api_key + (market.nil? ? '' : '&market=' + market)
      end
    end
  end
end
