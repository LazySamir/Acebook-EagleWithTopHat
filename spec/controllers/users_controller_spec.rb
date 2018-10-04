require 'rails_helper'

RSpec.describe UsersController, type: :controller do 

    it "an instance can be created" do
      users_controller = UsersController.new
      expect(users_controller).to be_an_instance_of(UsersController)
    end

end