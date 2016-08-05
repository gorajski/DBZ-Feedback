# require "rails_helper"

# feature "leaving new feedback", js:true do
# 	scenario "the user leaves valid feedback and it is submitted" do
# 		visit "/sessions/new"
# 		fill_in "Email", with: "joe@dbz.edu"
# 		fill_in "Password", with: "password"
# 		click_button "LOG IN"

# 		click_link "LEAVE FEEDBACK"
# 		within("#new_feedback") do
# 			fill_in "feedback[recipient]", with: "HELOM"
# 			fill_in "Project name", with: "DBZ"
# 			check "feedback[show_up]"
# 			check "feedback[check_in]"
# 			select "20", :from =>"feedback[percent_drive]"
# 			select "3", :from =>"feedback[clarity_of_communication]"
# 			fill_in "Content", with: "qazwsxedcrcvtbgyhn"
# 			click_button "Create Feedback"
# 		end
# 		expect(page).to have_content "Thank you"
# 	end
# 	scenario "the user leaves invalid feedback and sees errors" do
# 		visit "/sessions/new"
# 		fill_in "Email", with: "joe@dbz.edu"
# 		fill_in "Password", with: "password"
# 		click_button "LOG IN"

# 		click_link "LEAVE FEEDBACK"
# 		within("#new_feedback") do
# 			fill_in "feedback[recipient]", with: "HELOM"
# 			check "feedback[show_up]"
# 			check "feedback[check_in]"
# 			select "20", :from =>"feedback[percent_drive]"
# 			select "3", :from =>"feedback[clarity_of_communication]"
# 			click_button "Create Feedback"
# 		end
# 		expect(page).to have_css ".error"
# 	end
# end
