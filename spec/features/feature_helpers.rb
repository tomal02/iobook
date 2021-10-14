require 'rails_helper'

def login
	visit "/user/sign_in"
	fill_in "user_email", with: "email@example.com"
	fill_in "user_password", with: "testpass"
	click_button "Log in"
end

def sign_up
	visit "/user/sign_up"
	fill_in "user_email", with: "email@example.com"
	fill_in "user_password", with: "testpass"
	fill_in "user_password_confirmation", with: "testpass"
	click_button "Sign up"
end