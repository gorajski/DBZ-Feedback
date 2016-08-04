require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { User.create(full_name: "user1", email: "user1@user1") }
  let(:user2) { User.create(full_name: "user2", email: "user2@user2") }
  let(:feedback) { Feedback.new(show_up?: true, check_in?: true, percent_drive: 40, clarity_of_communication: 4, content: "Four score and seven years ago") }
  let(:review) { Review.new(doable: 4, benevolent: 4, zeroed_in: 4) }

  describe "associations" do
    it "user1 has received many pieces of feedback" do
      expect(user1.received_feedbacks).to be_empty
      user1.received_feedbacks << feedback
      expect(user1.received_feedbacks).to include(feedback)
    end

    it "user2 has given many reviews of pieces of feedback" do
      expect(user2.given_reviews).to be_empty
      user2.given_reviews << review
      expect(user2.given_reviews).to include(review)
    end

    it "user1 has given many pieces of feedback" do
      expect(user1.given_feedbacks).to be_empty
      user1.given_feedbacks << feedback
      expect(user1.given_feedbacks).to include(feedback)
    end

    it "user1 has a reviewed many pieces of feedback" do
      expect(user1.received_reviews).to be_empty
      user1.given_feedbacks << feedback
      # feedback.recipient_id = user2.id
      feedback.reviews << review
      expect(user1.received_reviews).to include(review)
    end


  end

end
