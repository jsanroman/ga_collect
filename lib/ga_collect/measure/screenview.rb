module GaCollect
  module Measure

    # https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#screenView
    def self.screenview(options={})
      params = {an: '', av: '', aid: '', aiid: '', cd: ''}.merge(options)

      GaCollect::HTTP.get(params)
    end
  end
end