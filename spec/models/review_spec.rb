require 'rails_helper'

RSpec.describe Review, type: :model do
  let(user1) { User1.create(full_name: "user1", email: "user1@user1") }
  let(user2) { User2.create(full_name: "user2", email: "user2@user2") }
  let(feedback) { Feedback.new(recipient_id: 1, show_up?: true, check_in?: true, percent_drive: 40, clarity_of_communication: 4, content: "Four score and seven years ago") }
  let(review) { Review.new(doable: 4, benevolent: 4, zeroed_in: 4) }

  before(:each) do
    review.reviewer = user
    review.feedback = feedback
    review.save
  end

  it "describes review's user" do
    expect(review.reviewer).to eq(user)
  end

  it "describes review's user" do
    expect(review.feedback).to eq(feedback)
  end

end
