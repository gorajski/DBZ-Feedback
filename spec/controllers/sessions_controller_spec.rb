require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
	before(:each){session[:user_id]=User.first.id}
	describe "GET /sessions/new" do
		it "renders a form for login" do
			get :new
			expect(response).to render_template "new"
		end
	end

	describe "POST /sessions" do
		it "assigns a new user object" do
			post :create, params:{sessions:{full_name:"heelo world", email:"joe@dbz.edu", password:"password"}}
			expect(assigns(:user)).to be_a User
		end
		context "the user info is valid" do
			it 'stores the users id in the session' do
				post :create, {sessions:{full_name:"heelo world", email:"joe@dbz.edu", password:"password"}}
				expect(session[:user_id]).to eq User.find_by_email("joe@dbz.edu").id
			end
			it 'redirects to the homepage' do
				post :create, {sessions:{full_name:"heelo world", email:"joe@dbz.edu", password:"password"}}
				expect(response).to redirect_to "/"
			end
		end
		context "The user info isn't valid" do
			it "renders the login form" do
				post :create, {sessions:{full_name:"heelo world", email:"j@d.edu", password:"pass"}}
				expect(response).to render_template "new"
			end
		end
	end

	describe "logging out " do
		it "redirects to the home page" do
			delete :destroy, params: nil, sessions:{user_id: 1}
			expect(session[:user_id]).to be nil
		end
	end
end




