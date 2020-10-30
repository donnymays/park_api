require 'rails_helper'

describe 'put review route', :type => :request do
  let!(:reviews) { FactoryBot.create(:park, name: 'test', park_type: 'test_type', description: 'test_description', state_name: 'test_state_name', amenities: 'test_amenities', entrance_fee: 5, id: 1 ) }

  before { put '/parks/1', params: {name: 'patched_name'} }

  # Test for header
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  # Test for body
  it 'updates a park' do
    expect(JSON.parse(response.body)['message']).to eq("Park updated successfully")
  end
end