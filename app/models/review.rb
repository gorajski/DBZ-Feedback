class Review < ApplicationRecord
  belongs_to :reviewer, class_name: :User
  belongs_to :feedback

  validates :doable, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :benevolent, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :zeroed_in, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :reviewer_id, presence: true
  validates :feedback_id, presence: true
end
