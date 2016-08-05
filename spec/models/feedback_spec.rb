# require 'rails_helper'

# RSpec.describe Feedback, type: :model do
#   let(:user) { User.create(full_name: "user", email: "user@user") }
#   let(:pair) { User.create(full_name: "pair", email: "pair@pair") }
#   let(:reviewer) { User.create(full_name: "reviewer", email: "reviewer@reviewer") }
#   let(:feedback) { Feedback.new(show_up: true, check_in: true, percent_drive: 40, clarity_of_communication: 4, content: "Four score and seven years ago") }
#   let(:review) { Review.new(doable: 4, benevolent: 4, zeroed_in: 4) }

#   before(:each) do
#   	feedback.author = user
#   	feedback.recipient = pair
#   	review.reviewer = reviewer
#   	review.feedback = feedback
#   	review.save
#   	feedback.reviews << review
#   end

#   it "describes feedback's author" do
#   	expect(feedback.author).to eq(user)
#   end

# 	it "describes feedback's reviewer" do
# 		expect(feedback.recipient).to eq(pair)
# 	end

# 	it "describes feedback's reviews" do
# 		expect(feedback.reviews).to include(review)
# 	end

# end
