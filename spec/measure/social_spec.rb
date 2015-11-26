require 'spec_helper'

describe "GaCollect::Measure.social" do
  include_context "shared_context"

  it 'social raise exception when sa is empty' do
    expect{
      @tracker.social(sn: 'facebook', st: '/home')
    }.to raise_error(ArgumentError)
  end

  it 'social raise exception when sn is empty' do
    expect{
      @tracker.social(sa: 'like', st: '/home')
    }.to raise_error(ArgumentError)
  end

  it 'social raise exception when st is empty' do
    expect{
      @tracker.social(sa: 'like', sn: 'facebook')
    }.to raise_error(ArgumentError)
  end

  it 'social success' do
    response = @tracker.social(sa: 'like', sn: 'facebook', st: '/home', cid: 'client_id')

    expect(response.code).to eq('200')
  end
end
