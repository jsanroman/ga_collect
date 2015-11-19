module GaCollect
  module Measure

    # https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#page
    def self.pageview(options={})
      params = {dh: '', dp: '', dt: ''}.merge(options)

      GaCollect::HTTP.get(params)
    end
  end
end