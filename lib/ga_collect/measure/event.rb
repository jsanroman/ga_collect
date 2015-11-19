module GaCollect
  module Measure

    # https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#event
    def self.event(options={})
      raise ArgumentError, 'category is required'  if options[:ec].nil? || options[:ec].empty?
      raise ArgumentError, 'action is required'    if options[:ea].nil? || options[:ea].empty?

      params = {ec: '', ea: '', el: '', ev: ''}.merge(options)
      params.merge!({t: :event})

      GaCollect::HTTP.get(params)
    end
  end
end