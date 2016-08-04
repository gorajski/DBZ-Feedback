require "rails_helper"
RSpec.describe ReviewsController, type: :controller do
 	describe "GET /reviews" do
 		it "renders the index template" do
 			get :index
 			expect(response).to render_template "index"
 		end
 	end

end