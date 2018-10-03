require 'rails_helper'

RSpec.describe 'POST /registrations', type: :request do

  let(:url) { '/registrations' }
  let(:params) do 
    { 
      user: {
        full_name: 'Test Fullname', 
        email: 'Test@email.com',
        password: '123456'
      }
    }
  end

  context 'when the user is unauthenticated' do
    before { post url, params: params }

    it 'returns status code 200' do 
      expect(response.status).to eq 200
    end

  end
end