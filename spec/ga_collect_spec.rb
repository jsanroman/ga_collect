require 'spec_helper'

describe GaCollect do
  it 'has a version number' do
    expect(GaCollect::VERSION).not_to be nil
  end

  it 'raise exception when tracking_id is blank' do
    expect{ GaCollect.tracker('') }.to raise_error(ArgumentError)
  end

end
