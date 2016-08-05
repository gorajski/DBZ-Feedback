module ReviewsHelper

  def neediestFeedback
    @feedback = Feedback.relevant_sample
  end

end
