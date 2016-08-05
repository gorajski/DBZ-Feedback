class Feedback < ApplicationRecord
  has_many :reviews
  belongs_to :author, class_name: :User
  belongs_to :recipient, class_name: :User

  validates :author_id, presence: true
  validates :recipient_id, presence: true
  validates :percent_drive, presence: true
  validates :clarity_of_communication, presence: true
  validates :content, presence: true
  validates_length_of :content, :minimum => 10

  def average_doability
    (reviews.map(&:doable).reduce(:+)/reviews.count) rescue 0
  end

  def average_benevolence
    (reviews.map(&:benevolent).reduce(:+)/reviews.count) rescue 0
  end

  def average_zeroed_inness
    (reviews.map(&:zeroed_in).reduce(:+)/reviews.count) rescue 0
  end

  def total_reviews_average
    (average_doability + average_benevolence + average_zeroed_inness)/3
  end

  def return_if_appropriate
    return self if total_reviews_average >= 50
  end


  def self.relevant_sample

    relevancy_index = Feedback.build_relevancy_index
    loop do
      chosen_id = Feedback.choose_sample(relevancy_index)
      # if !current_user.is_author?(chosen_id)
        return Feedback.find(chosen_id)
      # end
    end

  end

  def self.inappropriate
    all.select{|feedback| feedback.average_benevolence < 30 && feedback.reviews.length >2 }
  end

  def self.exemplary
    all.select{|fb| fb.return_if_appropriate}
  end

  def self.build_relevancy_index
    feedbacks = Feedback.all

    unsorted_index = {}      # KEY => index of feedback, VALUE => relevancy_score
    feedbacks.map do |piece|
      unsorted_index[piece.id] = piece.age_in_hours - (piece.author.received_reviews.count * piece.author.received_reviews.count) + piece.author.age_in_hours
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

