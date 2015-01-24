module Bittrex
  class Configuration
    attr_accessor :key, :secret, :api_version

    def initialize(key, secret, api_version)
      @key = key
      @secret = secret
      @api_version = api_version
    end
  end
end
