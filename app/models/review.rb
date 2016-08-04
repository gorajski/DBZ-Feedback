class Review < ApplicationRecord
  belongs_to :reviewer, class_name: :User
  belongs_to :feedback

  VALUES = [0, 20, 40, 60, 80, 100]
end
