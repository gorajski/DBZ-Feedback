class Feedback < ApplicationRecord
  has_many :reviews
  belongs_to :author, class_name: :User
  belongs_to :recipient, class_name: :User

  validates :author_id, presence: true
  validates :recipient_id, presence: true
  validates :show_up?, presence: true
  validates :check_in?, presence: true
  validates :percent_drive, presence: true
  validates :clarity_of_communication, presence: true
  validates :content, presence: true
  validates_length_of :content, :minimum => 10

  def self.relevant_sample

    relevancy_index = Feedback.build_relevancy_index
    loop do
      chosen_id = Feedback.choose_sample(relevancy_index)
      # if !current_user.is_author?(chosen_id)
        return Feedback.find(chosen_id)
      # end
    end

  end


  def self.build_relevancy_index
    feedbacks = Feedback.all

    unsorted_index = {}      # KEY => index of feedback, VALUE => relevancy_score
    feedbacks.map do |piece|
      unsorted_index[piece.id] = piece.age_in_hours - (piece.reviews.count * piece.reviews.count) + piece.author.age_in_hours
    end

    relevancy_index = unsorted_index.sort_by { |index, score| score }.reverse
  end


  def self.choose_sample(relevancy_index)
    # relevancy_index[0,100].sample
    relevancy_index[0][0]
  end


  def age_in_hours
    ((Time.now - self.created_at)/3600).to_i
  end


  def is_author?(feedback_id)
    Feedback.find(feedback_id).author == current_user
  end

end


# list = {}
# fb.map do |piece|
#   list[piece.id] = ((Time.now - piece.created_at)/3600).to_i - piece.reviews.count + ((Time.now - piece.author.created_at)/3600).to_i
# end

# [69, 61, 66, 51, 64, 1, 77, 14, 155, 104, 118, 132, 157]
# 157   69
