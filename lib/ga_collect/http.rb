require 'net/http'

module GaCollect
  module HTTP

    def self.get(params)
      uri = URI('http://www.google-analytics.com/collect')
      uri.query = URI.encode_www_form(params)

      Net::HTTP.get_response(uri)
    end

  end
end
