require 'json'
require 'open-uri'

require 'bittrex/version'
require 'bittrex/configuration'
require 'bittrex/api/request'
require 'bittrex/api/response'
require 'bittrex/api/base'
require 'bittrex/api/public'
require 'bittrex/api/market'
require 'bittrex/api/account'


module Bittrex

  def self.configuration
    @configuration ||= Configuration.new(nil, nil, 1)
  end

  def self.config(&block)
    block.call(configuration)
  end
end
