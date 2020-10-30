require 'rails_helper'

describe 'get all parks route', :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 20) }

  before { get '/parks' }

  # Test for header
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  # Test for body
  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(20)
  end
end

# Test the name Search Parameter
describe 'get all parks matching name search', :type => :request do
  let!(:parks) { FactoryBot.create(:park, name: 'North Cascades National Park', park_type: 'National', description: 'rugged & beautiful', state_name: 'Washington', amenities: 'hiking, climbing, camping, boating, wildlife viewing', entrance_fee: 20) }

  before { get '/parks?name=North Cascades National Park' }

  # Test for header
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  # Test for body size
  it 'returns all parks matching the search' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  # Test the body content
  it 'returns the correct content' do
    expect(JSON.parse(response.body).first['name']).to eq('North Cascades National Park')
  end
end