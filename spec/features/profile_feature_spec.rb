feature "viewing a user profile", js:true do
  scenario "A user can see their given and recieved feedback" do
    visit "/sessions/new"
    fill_in "Email", with: "joe@dbz.edu"
    fill_in "Password", with: "password"
    click_button "LOG IN"
    click_link "BROSEPH"
    expect(page).to have_css "#feedback-received"
  end
  scenario "A user can click to see their given feedback" do
    visit "/sessions/new"
    fill_in "Email", with: "joe@dbz.edu"
    fill_in "Password", with: "password"
    click_button "LOG IN"
    click_link "BROSEPH"
    click_link "Feedback Given"
    expect(page).to have_css "#feedback-given"
  end
end
