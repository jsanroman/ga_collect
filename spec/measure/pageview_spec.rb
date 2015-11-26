# encoding: utf-8
require 'spec_helper'

describe "GaCollect::Measure.pageview" do
  include_context "shared_context"

  it 'pageview success' do
    response = @tracker.pageview(dh: 'jsanroman.net', dp: '/about', dt: 'Javi Sanromán')

    expect(response.code).to eq('200')
  end
end
