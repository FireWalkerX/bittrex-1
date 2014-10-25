require 'bittrex/version'
require 'bittrex/configuration'

module Bittrex

  def self.config
    @configure ||= Configuration.new
  end

  def self.configure(&block)
    block.call(config)
  end
end

