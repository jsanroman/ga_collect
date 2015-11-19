require 'spec_helper'

describe "GaCollect::Measure.event" do
  include_context "shared_context"

  it 'event raise exception when category is empty' do
    expect{ @tracker.event(ea: 'test2', ev: 1) }.to raise_error(ArgumentError)
  end

  it 'event raise exception when action is empty' do
    expect{ @tracker.event(ec: 'ga_collect', ev: 1) }.to raise_error(ArgumentError)
  end

  it 'event sucess' do
    response = @tracker.event(ec: 'ga_collect', ea: 'test2', ev: 1)

    expect(response.code).to eq('200')
  end
end
