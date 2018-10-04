require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  before(:each) do
    @user = User.create(full_name: "Test Name", email: "123@abc.com", password: "123456", password_confirmation: "123456")
  end

  describe "#new" do
    it "sets @post equals an object" do
      pc = PostsController.new
      expect(pc.new).to be_an_instance_of(Post)
    end
  end

  describe "POST /" do
    it "creates a post" do
      post :create, params: { post: { message: "Hello, world!", user_id: @user.id} }
      testpost = Post.find_by(message: "Hello, world!")
      expect(testpost.message).to eq("Hello, world!")
    end
  end

  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
