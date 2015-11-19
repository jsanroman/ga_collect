require 'spec_helper'

describe "GaCollect::Measure.item" do
  include_context "shared_context"

  it 'item raise exception when transaction_id is empty' do
    expect{
      @tracker.item
    }.to raise_error(ArgumentError)
  end

  it 'item success' do
    response = @tracker.item(ti: 123, in: 'test', ip: '10', iq: 2, ic: '12345', iv: 'ga_collect')

    expect(response.code).to eq('200')
  end
end
