class User < ApplicationRecord
  has_secure_password
  # has_many :feedbacks, foreign_key: :author_id  #not OK
  has_many :given_feedbacks, class_name: :Feedback, foreign_key: "author_id"  #OK
  has_many :received_feedbacks, class_name: :Feedback, foreign_key: "recipient_id"  #OK
  has_many :given_reviews, class_name: :Review, foreign_key: "reviewer_id"  #OK
  has_many :received_reviews, through: :given_feedbacks, source: :reviews  #OK

  validates :full_name, presence: true
  validates :email, presence: true

  has_secure_password

end
