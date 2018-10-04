require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do

  describe "Post /" do
    let(:params) do
      {
        'user': {
          'full_name': 'Test Name',
          'email': 'test@email.com',
          'password': '123456',
          'password_confirmation': '123456'
        }
      }
    end
    let(:invalid_params) do
      {
        'user': {
          'full_name': 'Not Invalid Name',
          'email': 'test.test.com',
          'password': '12345',
          'password_confirmation': '123456'
        }
      }
    end

    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
    end

    context 'with valid params' do
       before { post :create, params: params  }
      it 'returns status code 200' do
        expect(response.status).to eq 200
      end
      it 'returns json data' do
        expect(response.content_type).to eq('application/json')
      end
      it 'provides a success indication' do
        expect(response).to be_successful
      end

    end

    context 'with invalid params' do
      it 'it does not create a new user' do
        post :create, params: invalid_params
        expect(response.status).to eq 400
        expect(response.content_type).to eq('application/json')
      end
    end

  end
end
