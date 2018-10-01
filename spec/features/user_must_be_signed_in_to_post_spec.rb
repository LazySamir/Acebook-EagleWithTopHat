require 'rails_helper'

RSpec.feature "Must be signed in to post", type: :feature do
  scenario "User must be signed in to create a new post" do
    visit "/posts/new"

    expect(page).to have_content("Log in")
  end
end