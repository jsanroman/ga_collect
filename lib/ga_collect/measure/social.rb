module GaCollect
  module Measure

    # https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#social
    def self.social(options={})
      raise ArgumentError, 'social_action is required'  if options[:sa].nil? || options[:sa].empty?
      raise ArgumentError, 'social_network is required' if options[:sn].nil? || options[:sn].empty?
      raise ArgumentError, 'social_target is required'  if options[:st].nil? || options[:st].empty?

      params = {sa: '', sn: '', st: ''}.merge(options)

      GaCollect::HTTP.get(params)
    end
  end
end