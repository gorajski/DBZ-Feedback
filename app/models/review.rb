class Review < ApplicationRecord
  belongs_to :reviewer, class_name: :User
  belongs_to :feedback

  VALUES = [0, 20, 40, 60, 80, 100]

  validates :doable, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :benevolent, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :zeroed_in, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :reviewer_id, presence: true
  validates :feedback_id, presence: true
end
