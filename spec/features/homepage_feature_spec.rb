# require "rails_helper"

# feature "visiting the homepage", js:true do
# 	context "the user is not logged in" do
# 		scenario "it can click on a log in button" do
# 			visit "/"
# 			expect(page).to have_content "LOG IN"
# 		end
# 		scenario "it can click on a register button" do
# 			visit "/"
# 			expect(page).to have_content "REGISTER"
# 		end
# 	end
# 	feature "logging in" do
# 		scenario "A valid user logs in" do
# 			visit "/sessions/new"
# 			fill_in "Email", with: "joe@dbz.edu"
# 			fill_in "Password", with: "password"
# 			click_button "LOG IN"
# 			expect(page).not_to have_content "LOG IN"
# 		end
# 	end

# 	context "the user is logged in" do
# 		scenario " it can click to give feedback" do
# 			visit "/sessions/new"
# 			fill_in "Email", with: "joe@dbz.edu"
# 			fill_in "Password", with: "password"
# 			click_button "LOG IN"
# 			expect(page).to have_content "LEAVE FEEDBACK"
# 		end
# 		scenario "it can click to review feedback" do
# 			visit "/sessions/new"
# 			fill_in "Email", with: "joeduran@dbz.edu"
# 			fill_in "Password", with: "password"
# 			click_button "LOG IN"
# 		end
# 	end
# end
