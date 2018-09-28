require 'rails_helper'

RSpec.feature "Like posts", type: :feature do
  pending "User can like posts" do

    visit "/users/sign_up"
    fill_in "user_full_name", with: "My Name"
    fill_in "user_email", with: "ab@cd.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"

    click_button "Sign up"

    click_link "Acebook"

    click_link

    expect(page).to have_content("You have signed up successfully")
  end
end
