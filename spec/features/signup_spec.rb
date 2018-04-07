require 'rails_helper'

feature "sign up" do
	let(:hacker) { FactoryBot.create(:hacker)}

	def fill_in_signup_fields
		fill_in "hacker[email]", with: hacker.email
		fill_in "hacker[password]", with: hacker.password
		fill_in "hacker[password_confirmation]", with: hacker.password_confirmation

		click_button "Sign up"
	end

	scenario "visiting the site to sign up" do
		visit root_path
		click_link "Sign up"
		fill_in_signup_fields
		expect(page).to have_content("Welcome! You have signed up successfully")
	end
end