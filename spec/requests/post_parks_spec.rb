require 'rails_helper'

describe 'Park#create', type: :request do

  before { post '/parks', params: { name: 'test', park_type: 'test_type', description: 'test_description', state_name: 'test_state_name', amenities: 'test_amenities', entrance_fee: 5  } }

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'returns correct content' do
    expect(JSON.parse(response.body)['description']).to eq('test_description')
  end

end