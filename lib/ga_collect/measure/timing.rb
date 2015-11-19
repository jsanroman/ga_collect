module GaCollect
  module Measure

    # https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#usertiming
    def self.timing(options={})
      params = {utc: '', utv: '', utt: 0, utl: '', dns: 0, pdt: 0, rrt: 0, tcp: 0, srt: 0}.merge(options)

      GaCollect::HTTP.get(params)
    end
  end
end