require "rails_helper"

RSpec.describe UsersController, type: :controller do
	describe "get /users/new" do
		it "renders the registration form" do
			get :new
			expect(response).to render_template "new"
		end
		it "assigns a new user" do
			get :new
			expect(assigns(:user)).to be_a User
		end
	end
	describe "POST /users" do
		context "the user input valid info" do
			it "stores a new user in the database" do
				expect{post :create, params:{user:{full_name:"Matt Baker", email:"abc@dbz.edu", password:"password"}}}.to change{User.count}.by 1
			end
		end
		it "redirects the user to the homepage" do
			post :create, params:{user:{full_name:"Duke Greene", email:"abc@dbz.edu", password:"password"}}
			expect(response).to redirect_to "/"
		end
	end
end
