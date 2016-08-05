require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(full_name: "user", email: "user@user") }
  let(:pair) { User.create(full_name: "pair", email: "pair@pair") }
  let(:reviewer) { User.create(full_name: "reviewer", email: "reviewer@reviewer") }
  let(:feedback) { Feedback.new(show_up: true, check_in: true, percent_drive: 40, clarity_of_communication: 4, content: "Four score and seven years ago") }
  let(:review) { Review.new(doable: 4, benevolent: 4, zeroed_in: 4) }

  describe "associations" do
    it "user has received many pieces of feedback" do
      expect(user.received_feedbacks).to be_empty
      user.received_feedbacks << feedback
      expect(user.received_feedbacks).to include(feedback)
    end

    it "user has given many reviews of pieces of feedback" do
      expect(user.given_reviews).to be_empty
      user.given_reviews << review
      expect(user.given_reviews).to include(review)
    end

    it "user has given many pieces of feedback" do
      expect(user.given_feedbacks).to be_empty
      user.given_feedbacks << feedback
      expect(user.given_feedbacks).to include(feedback)
    end

    it "user has received many reviews on their feedback" do
      expect(user.received_reviews).to be_empty
      feedback.recipient_id = pair.id     # user gives feedback to pair
      user.given_feedbacks << feedback    # "
      review.reviewer = reviewer.id       # reviewer reviews the user's feedback
      feedback.reviews << review          # "
      expect(user.received_reviews).to include(review)  # user should have a received review on their the feedback
    end

  end

end
