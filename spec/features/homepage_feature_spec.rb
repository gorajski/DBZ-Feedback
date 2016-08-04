require "rails_helper"

feature "visiting the homepage" do
	scenario "the user is not logged in" do
		visit "/"
		expect(page).to have_content "Log In"
	end
	scenario "it can click on a login button" do
			visit "/"
			expect(page).to have_content "Register"
		end
	# scenario "the user is logged in" do
	# 	it "can click to give feedback" do
	# 		visit "/sessions/new"
	# 		fill_in "Email", with: "joeduran@dbz.edu"
	# 		fill_in "Password", with: "passw0rd"
	# 		click_button "Log In"
	# 		expect(page).to have_content "Leave Feedback"
	# 	end
	# 	end
	# 	it "can click to review feedback" do
	# 		visit "/sessions/new"
	# 		fill_in "Email", with: "joeduran@dbz.edu"
	# 		fill_in "Password", with: "passw0rd"
	# 		click_button "Log In"
	# 	end
	# end
end