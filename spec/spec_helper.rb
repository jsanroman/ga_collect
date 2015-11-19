$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'ga_collect'

shared_context "shared_context" do
  before do
    @tracker  = GaCollect.tracker('test_tracker_id')
  end
end