module Bittrex
  module Api
    module Account
      include Base

      private

      class << self
        def balances(_params)
          'account/getbalances' + api_key
        end

        def balance(currency: )
          'account/getbalance' + api_key + '&currency=' + currency
        end

        def deposit_address(currency: )
          'account/getdepositaddress' + api_key + '&currency=' + currency
        end

        def withdraw(currency: , quantity: , address:, payment_id: )
          'account/withdraw'
        end

        def order(uuid: )
          'account/getorder' + api_key + '&uuid=' + uuid
        end

        def order_history(market: , count: )
          'account/getorderhistory' + api_key + '&market=' + market + '&count=' + count.to_s
        end

        def withdrawal_history(curreny: , count: )
          'account/getwithdrawalhistory'
        end

        def deposit_history(currency: , count: )
          'account/getdeposithistory' + api_key + '&currency=' + currency + '&count=' + count
        end
      end
    end
  end
end
