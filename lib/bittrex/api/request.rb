module Bittrex
  module Api
    class Request

      def initialize(path)
        @base_url = "https://bittrex.com/api/v#{Bittrex.configuration.api_version}/"
        @path = path
        @full_url = @base_url + @path
      end

      def get
        begin
          Response.new(open(@full_url, { 'APISIGN' => hmac_signature }))
        rescue NoMethodError => e
          raise Base::ResponseError
        end
      end

      private

      def hmac_signature
        OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha512'), Bittrex.configuration.secret, @full_url)
      end
    end
  end
end
