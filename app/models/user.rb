class User < ApplicationRecord
  has_secure_password
  has_many :given_feedbacks, class_name: :Feedback, foreign_key: "author_id"
  has_many :received_feedbacks, class_name: :Feedback, foreign_key: "recipient_id"
  has_many :given_reviews, class_name: :Review, foreign_key: "reviewer_id"
  has_many :received_reviews, through: :given_feedbacks, source: :reviews

  validates :full_name, presence: true
  validates :email, presence: true
  validates_format_of :email,{with: /.*@dbz.edu\b/, message:" must be a valid DBZ email"}
  has_secure_password


  def age_in_hours
    ((Time.now - self.created_at)/3600).to_i
  end

end
