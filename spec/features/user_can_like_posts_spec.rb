require "rails_helper"

RSpec.feature "Likes", type: :feature do
  scenario "User can like a post" do
    user_sign_up # method in helper needs to be changed once full_name in DB is working.
    user_sign_in
    make_post
    visit "/posts"
    click_button "Like"

    expect(page).to have_content("1 like")
  end 
end