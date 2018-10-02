require 'rails_helper'

RSpec.describe "Acebook posts API", type: :request do

  # before(:each) do
  #   user = User.create(full_name: "Test Name", email: "123@abc.com", password: "123456")
  # end

  describe 'GET /posts' do
    before { get '/posts' }
    # get :index, params: {}

    it "returns JSON of all posts" do
      # return JSON test
    end

    it "returns http status :200" do
      # get :index, params: {}
      expect(response).to have_http_status(200) # :okay
    end

    it "return content_type application/json" do
      expect(response.content_type).to eq("application/json")
    end
  end

  describe 'POST /posts' do
    # before { post '/posts' }

    it "returns http status :201" do
      # post "/posts", {:params => { :message => "this is my first post", :user_id => 1}}

      # expect(response).to have_http_status(:created) # :201


    # post :create, params: {message: "this is my second post"}


    # expect(response).to have_http_status(:created)

    end
  end

end
