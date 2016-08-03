require 'rails_helper'

RSpec.describe User, type: :model do
  let(user1) { User1.create(full_name: "user1", email: "user1@user1") }
  let(user2) { User2.create(full_name: "user2", email: "user2@user2") }
  let(feedback) { Feedback.new(recipient_id: 1, show_up?: true, check_in?: true, percent_drive: 40, clarity_of_communication: 4, content: "Four score and seven years ago") }
  let(review) { Review.new(doable: 4, benevolent: 4, zeroed_in: 4) }

  it "has a feedback collection" do
    it "has feedback entries" do
      expect(user1.feedbacks).to be_empty
      user1.feedbacks << feedback
      expect(user1.feedbacks.first).to contain(feedback)
    end

    it "" do

    end

  end

  it "has a review collection" do
    expect(user2.review).to be_empty
    user1.review << review
    expect(user2.review.first).to contain(review)
  end

end
