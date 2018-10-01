def convert_time_check
  posts = Post.all
  time_check = posts[0].created_at
  converted_time = time_check.strftime("%B %e, %Y at %I:%M %p")
end

def user_sign_up 
  user = User.create(full_name: "Test Name", email: "123@abc.com", password: "123456")
  # visit "/users/sign_up"
  # fill_in "user_full_name", with: "My Name"
  # fill_in "user_email", with: "ab@cd.com"
  # fill_in "user_password", with: "123456"
  # fill_in "user_password_confirmation", with: "123456"
  # click_button "Sign up"
end

def make_post
  # user must be signed in
  visit "/"
  click_link "New post"
  fill_in "Message", with: "Hello, world!"
  click_button "Submit"
end

def user_sign_in
  visit "/"
  click_link "Sign In"
  fill_in "user_email", with: "123@abc.com"
  fill_in "user_password", with: "123456"
  click_button "Log in"
end