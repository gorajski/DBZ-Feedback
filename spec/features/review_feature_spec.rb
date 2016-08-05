# require "rails_helper"

# feature "reviewing feedback on the homepage", js:true do
#   scenario "a feedback shows up on the page " do
#     visit "/sessions/new"
#     fill_in "Email", with: "joe@dbz.edu"
#     fill_in "Password", with: "password"
#     click_button "LOG IN"
#     expect(page).to have_css ".feedback-body"
#   end
#   scenario "a user can review the feedback" do
#     visit "/sessions/new"
#     fill_in "Email", with: "joe@dbz.edu"
#     fill_in "Password", with: "password"
#     click_button "LOG IN"
#     within("#review-form") do
#       select "100", from: "Doable"
#       select "100", from: "Benevolent"
#       select "100", from: "Zeroed in"
#       click_button "Create Review"
#     end
#     expect(page).to have_content "dbzlp"
#   end
#   scenario "A user doesn't complete the form and sees an error" do
#     visit "/sessions/new"
#     fill_in "Email", with: "joe@dbz.edu"
#     fill_in "Password", with: "password"
#     click_button "LOG IN"
#       within("#review-form") do
#       select "100", from: "Doable"
#       select "100", from: "Benevolent"
#       click_button "Create Review"
#     end
#     expect(page).to have_content "You must fill in"
#   end
# end
