module GaCollect
  module Measure

    # https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#ecom
    def self.transaction(options={})
      raise ArgumentError, 'transaction_id is required'  if options[:ti].nil? || options[:ti].to_s.empty?

      params = {ti: '', ta: '', tr: 0, ts: 0, tt: 0, cu: 'EUR'}.merge(options)

      GaCollect::HTTP.get(params)
    end
  end
end