require 'rails_helper'

describe 'Park#show', type: :request do

  let!(:parks) { FactoryBot.create_list(:park, 1) }  

  before { get '/parks', params: { access_token: '38d0b14f74d6b7b831ce3d76dae29da6id', id: 1 } }
    
    # Test for header
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  # Test for body
  it 'returns 1 park' do
    expect(JSON.parse(response.body).size).to eq(1)
  end
end