require 'rails_helper' 

RSpec.describe RegistrationsController, type: :controller do

  describe "Post /" do 
    let(:params) do 
      { 
        user: {
          full_name: 'Test Name',
          email: 'test@email.com',
          password: '123456'
        }
      }
    end
    let(:invalid_params) do 
      {
        user: {
          full_name: 'Not Invalid Name',
          email: 'test.test.com',
          password: '12345'
        }
      }
    end

    before do 
      @request.env["devise.mapping"] = Devise.mappings[:user]
    end  

    context 'with valid params' do
      it 'returns status code 200' do 
        post :create, params: params 
        expect(response.status).to eq 200
      end
    end

    context 'with invalid params' do 
      it 'returns status code 400' do 
        post :create, params: invalid_params
        expect(response.status).to eq 400
      end
    end

  
  end
end