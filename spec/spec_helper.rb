$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'ga_collect'

shared_context "shared_context" do
  before do
    @tracker  = GaCollect.tracker('UA-2888296-1')
  end
end