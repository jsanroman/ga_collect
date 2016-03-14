require "ga_collect/version"

module GaCollect
  MEASURES = [:pageview, :event, :transaction, :item, :social, :exception, :timing, :screenview]

  def self.tracker(tracking_id = nil, version=1)
    raise ArgumentError, 'tracking_id is required' if tracking_id.nil? || tracking_id.empty?
    GaCollect::Tracker.new(tracking_id, version)
  end

  class Tracker
    def initialize(tracking_id, version=1)
      @tracking_id = tracking_id
      @version     = version
    end


    GaCollect::MEASURES.each do |method|
      define_method(method) do |argument|
        options = argument.merge({v: @version, tid: @tracking_id, t: method})

        GaCollect::Measure.send(method, options)
      end
    end
  end

  def self.logger
    @@logger ||= defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
  end

  def self.logger=(logger)
    @@logger = logger
  end
end


require 'ga_collect/http'
GaCollect::MEASURES.each do |measure|
  require "ga_collect/measure/#{measure}"
end
