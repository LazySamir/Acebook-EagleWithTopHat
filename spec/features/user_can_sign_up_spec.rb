require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Can sign up" do
    visit "/user/new"
    fill_in "Full name", with: "My Name"
    fill_in "Handle", with: "My Handle"
    fill_in "Email", with: "email@email.com"
    fill_in "Password", with: "123"
    click_button "Submit"
    expect(page).to have_content("You are now signed up!")
  end
end
