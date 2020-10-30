require 'rails_helper'

describe 'Park#destroy', :type => :request do
  let!(:parks) { FactoryBot.create(:park, name: 'North Cascades National Park', park_type: 'National', description: 'rugged & beautiful', state_name: 'Washington', amenities: 'hiking, climbing, camping, boating, wildlife viewing', entrance_fee: 20, id: 2) }

  before do
     delete '/parks/2'
  end

  # Test for header
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  # Test for body
  it 'deletes a park' do
    expect(JSON.parse(response.body).values[0]).to eq("Park deleted")
  end
end