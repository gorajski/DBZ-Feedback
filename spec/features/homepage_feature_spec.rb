require "rails_helper"

feature "visiting the homepage" do
	scenario "the user is not logged in" do
		it "can click on a register button" do
			visit "/"
			click "Log in"

		end
		it "can click on a login button" do
		end
	end
	scenario "the user is logged in" do
		it "can click to give feedback" do
		end
		it "can click to review feedback" do
		end
	end
end