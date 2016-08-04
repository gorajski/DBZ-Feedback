feature "viewing a user profile" do
  scenario "A user can see their given and recieved feedback" do
      visit "/sessions/new"
      fill_in "Email", with: "joe@dbz.edu"
      fill_in "Password", with: "password"
      click_button "LOG IN"
      click_link "BROSEPH"
      expect(page).to have_css "#feedback-recieved-tab.hidden"
    end
    scenario "A user can click to see their given feedback" do
      visit "/sessions/new"
      fill_in "Email", with: "joe@dbz.edu"
      fill_in "Password", with: "password"
      click_button "LOG IN"
      click_link "BROSEPH"
      click_link "FEEDBACK GIVEN"
      expect(page).to have_css "#feedback-given-tab.hidden"
    end
  end
end
