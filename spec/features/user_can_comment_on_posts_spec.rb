require 'rails_helper'

RSpec.feature "Timeline", type: :feature do

  pending "Users can comment on posts" do

    before :each do
      visit "/users/sign_up"
      fill_in "user_full_name", with: "My Name"
      fill_in "user_email", with: "ab@cd.com"
      fill_in "user_password", with: "123456"
      fill_in "user_password_confirmation", with: "123456"
      click_button "Sign up"

      visit "/posts"
      click_link "New post"
      fill_in "Message", with: "Test Post"
      click_button "Submit"
    end

    visit "/posts"
    click_link "Comment"
    # link to correct comment
    fill_in "Comment", with: "Test Comment"
    click_button "Submit"

    expect(page).to have_content("Test Comment")
  end
end
