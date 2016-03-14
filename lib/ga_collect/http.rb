require 'net/http'

module GaCollect
  module HTTP

    def self.get(params)
      uri = URI('http://www.google-analytics.com/collect')
      uri.query = URI.encode_www_form(params)

      begin
        GaCollect.logger.warn("[ga_collect] sent to GA: #{uri}")
      rescue Exception => e
        GaCollect.logger.error(e)
      end

      Net::HTTP.get_response(uri)
    end

  end
end
