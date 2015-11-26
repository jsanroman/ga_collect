require 'spec_helper'

describe "GaCollect::Measure.exception" do
  include_context "shared_context"

  it 'exception success' do
    response = @tracker.exception(exd: 'IOException', exf: '1', cid: 'client_id')

    expect(response.code).to eq('200')
  end
end
