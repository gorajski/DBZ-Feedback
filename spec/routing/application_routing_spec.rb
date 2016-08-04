require "rails_helper"

RSpec.describe "Routing to the application", :type => :routing do
	it "GET /" do
		expect(:get => "/").to route_to("reviews#index")
	end
	it "GET /sessions/new" do
		expect(:get => "/sessions/new").to route_to("sessions#new")
	end
	it "POST /sessions" do
		expect(:post => "/sessions").to route_to("sessions#create")
	end
	it "DELETE /sessions" do
		expect(:delete => "/sessions").to route_to("sessions#destroy")
	end
end