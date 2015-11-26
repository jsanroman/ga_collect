require 'spec_helper'

describe "GaCollect::Measure.timing" do
  include_context "shared_context"

  it 'timing success' do
    response = @tracker.timing(utc: 'jsonLoader', utv: 'load', utt: 5000, utl: 'jQuery', dns: 100, pdt: 20, rrt: 32, tcp: 56, srt: 12, cid: 'client_id')

    expect(response.code).to eq('200')
  end
end
