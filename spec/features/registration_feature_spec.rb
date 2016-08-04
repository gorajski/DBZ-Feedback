require "rails_helper"

feature "registering a new user" do
	scenario "the user inputs valid info and gets logged in" do
		visit "/users/new"
		fill_in "Full name", with: "Broseephus"
		fill_in "Email", with: "joeduran@dbz.edu"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_button "Create User"
		expect(page).to have_content "LEAVE FEEDBACK"
	end
	scenario "the user inputs invalid info" do
		visit "/users/new"
		fill_in "Full name", with: "Broseephus"
		fill_in "Email", with: "joe@dbc.edu"
		fill_in "Password", with: "word"
		fill_in "Password confirmation", with: "passord"
		click_button "Create User"
		expect(page).to have_content "Unable"
	end
end
