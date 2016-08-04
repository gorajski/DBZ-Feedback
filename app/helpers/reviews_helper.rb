module ReviewsHelper

  def neediestFeedback
    @feedback = Feedback.all.select{|feedback| feedback.reviews.length == 0}.first
  end

end
