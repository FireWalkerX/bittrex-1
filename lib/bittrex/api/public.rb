module Bittrex
  module Api
    class Public
      include Base

      private

      def markets(_params)
        'public/getmarkets'
      end

      def currencies(_params)
        'public/getcurrencies'
      end

      def ticker(market: )
        'public/getticker?market=' + market
      end

      def market_summaries(_params)
        'public/getmarketsummaries'
      end

      def market_summary(market:)
        'public/getmarketsummary?market=' + market
      end

      def order_book(market: , type: 'both', depth: 20)
        'public/getorderbook?market=' + market + '&type=' + type + '&depth=' + depth.to_s
      end

      def market_history(market: , count: 20)
        'public/getmarkethistory?market=' + market + '&count=' + count.to_s
      end
    end
  end
end
