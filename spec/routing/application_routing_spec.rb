require "rails_helper"

RSpec.describe "Routing to the application", :type => :routing do
	it "GET /" do
		expect(:get => "/").to route_to("reviews#index")
	end
end