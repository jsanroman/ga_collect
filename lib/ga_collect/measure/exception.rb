module GaCollect
  module Measure

    # https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#exception
    def self.exception(options={})
      params = {exd: '', exf: ''}.merge(options)

      GaCollect::HTTP.get(params)
    end
  end
end