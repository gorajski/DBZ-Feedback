class Feedback < ApplicationRecord
  has_many :reviews  #OK
  belongs_to :author, class_name: :User  #OK
  belongs_to :recipient, class_name: :User  #bad!

  validates :author_id, presence: true
  validates :recipient_id, presence: true
  validates :show_up?, presence: true
  validates :check_in?, presence: true
  validates :percent_drive, presence: true
  validates :clarity_of_communication, presence: true
  validates :content, presence: true
  validates_length_of :content, :minimum => 10

end
