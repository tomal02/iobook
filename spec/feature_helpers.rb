require 'rails_helper'

def login
	visit "/users/sign_in"
	fill_in "user_email", with: "email@example.com"
	fill_in "user_password", with: "testpass"
	click_button "Log in"
end

def sign_up
	visit "/users/sign_up"
	fill_in "user_email", with: "email@example.com"
	fill_in "user_password", with: "testpass"
	fill_in "user_password_confirmation", with: "testpass"
	click_button "Sign up"
end

def post
	visit "/posts"
	click_link "New post"
	fill_in "Message", with: "Hello, world!"
  click_button "Submit"
end

def edit
	fill_in "Message", with: "Hello"
  click_button "Submit"
end