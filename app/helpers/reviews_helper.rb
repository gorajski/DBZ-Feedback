module ReviewsHelper

  def neediestFeedback
    @feedback = Feedback.all.shuffle.first
  end

end
