require 'spec_helper'

describe "GaCollect::Measure.screenview" do
  include_context "shared_context"

  it 'screenview success' do
    response = @tracker.screenview(an: 'funTimes', av: '4.2.0', aid: 'com.foo.App', aiid: 'com.android.vending', cd: 'Home')

    expect(response.code).to eq('200')
  end
end
