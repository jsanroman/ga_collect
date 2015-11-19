require 'spec_helper'

describe "GaCollect::Measure.transaction" do
  include_context "shared_context"

  it 'transaction raise exception when transaction_id is empty' do
    expect{
      @tracker.transaction
    }.to raise_error(ArgumentError)
  end

  it 'transaction success' do
    response = @tracker.transaction(ti: 123, ta: '', tr: 10, ts: 0, tt: 0, cu: 'EUR')

    expect(response.code).to eq('200')
  end
end
