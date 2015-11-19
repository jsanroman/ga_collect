module GaCollect
  module Measure

    # https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#ecom
    def self.item(options={})
      raise ArgumentError, 'transaction_id is required'  if options[:ti].nil? || options[:ti].to_s.empty?

      params = {ti: '', in: '', ip: 0, iq: 1, ic: '', iv: '', cu: 'EUR'}.merge(options)

      GaCollect::HTTP.get(params)
    end
  end
end