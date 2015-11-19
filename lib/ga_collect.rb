require "ga_collect/version"

module GaCollect
  MEASURES = [:pageview, :event, :transaction, :item, :social, :exception, :timing, :screenview]

  def self.tracker(tracking_id = nil)
    raise ArgumentError, 'tracking_id is required' if tracking_id.empty?
    GaCollect::Tracker.new(tracking_id)
  end

  class Tracker
    def initialize(tracking_id, client_id=555, version=1)
      @tracking_id = tracking_id
      @client_id   = client_id
      @version     = version
    end


    GaCollect::MEASURES.each do |method|
      define_method(method) do |argument|
        options = argument.merge({v: @version, tid: @tracking_id, cid: @client_id, t: method})

        GaCollect::Measure.send(method, options)
      end
    end
  end
end


require 'ga_collect/http'
GaCollect::MEASURES.each do |measure|
  require "ga_collect/measure/#{measure}"
end
