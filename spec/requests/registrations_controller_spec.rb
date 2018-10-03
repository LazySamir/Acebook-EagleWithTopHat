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

    before do 
      @request.env["devise.mapping"] = Devise.mappings[:user]
    end  

    context 'with valid params' do
      it 'returns status code 200' do 
        post :create, params: params 
    
        expect(response.status).to eq 200
      end
    end

  end
end



