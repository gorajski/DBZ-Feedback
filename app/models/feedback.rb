class Feedback < ApplicationRecord
  has_many :reviews
  belongs_to :author, class_name: :User
  belongs_to :recipient, class_name: :User
end
