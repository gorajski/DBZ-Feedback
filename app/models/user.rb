class User < ApplicationRecord
  has_many :feedbacks
  has_many :given_feedbacks, class_name: :Feedback, foreign_key: "author_id"
  has_many :received_feedbacks, class_name: :Feedback, foreign_key: "recipient_id"
  has_many :given_reviews, class_name: :Review, foreign_key: "reviewer_id"
  has_many :received_reviews, through: :feedbacks, source: :review

  validates :full_name, presence: true
  validates :email, presence: true

end
