require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do

	describe "#logged_in?" do
		context "a user is logged in" do
			it "returns true" do
				session[:user_id] = 1
				expect(logged_in?).to be_truthy
			end
		end
		context "a user is not logged in" do
			it "returns false" do
				session[:user_id] = nil
				expect(logged_in?).to be nil
			end
		end
	end

	describe "#current_user" do
		context "a user is logged in" do
			it "returns the current user object" do
				user = User.create!(full_name: "Broseephus",email:"me@dbz.edu", password:"passw0rd")
				session[:user_id] = user.id
				expect(current_user).to eq user
			end
		end
	end
	context "There is no curent user" do
		it "returns nil" do
			session[:user_id] = nil
			expect(current_user).to be nil
		end
	end

	describe "#authorize" do
		# context "the user is allowed to see the content" do
		# 	it "redirects to the root" do
		# 		session[:user_id] = nil
		# 		expect(authorize).to
		# 	end
		# end
		context "the user is not allowed to see the content" do
			it "returns nil" do
				user = User.create(email:"me@dbz.edu", password:"passw0rd")
				session[:user_id] = user.id
				expect(authorize).to be nil
			end
		end
	end
end

