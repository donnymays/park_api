require 'rails_helper'
require 'pry'

describe 'get random park route', :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 20) }

  before { get '/explore_parks/random' }

  # Test for header
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  # Test for body
  it 'returns one park' do
    expect(JSON.parse(response.body).length).to eq(7)
  end
end