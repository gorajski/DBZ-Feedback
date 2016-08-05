class FeedbacksController < ApplicationController

  def new
    @feedback = Feedback.new
  end

  def create
    recipient = User.find_by(full_name: feedback_params[:recipient])
    @feedback = recipient.received_feedbacks.new(feedback_params.slice(:pair_date, :project_name, :show_up, :check_in, :percent_drive, :clarity_of_communication, :content, :appropriate))
    @feedback.author = current_user
    if @feedback.save
      redirect_to new_feedback_path, notice: "Thank you for submitting feedback"
    else
      @errors = @feedback.errors.full_messages
      render new_feedback_path
    end
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def update
    @feedback = Feedback.find(params[:id])
    @feedback.exemplary = true
    @feedback.save

    redirect_to admins_path
  end

  private
  def feedback_params
    # params.require(:feedback).permit(:content, :recipient, :pair_date, :project_name, :show_up, :check_in, :percent_drive, :clarity_of_communication)
    params.require(:feedback).permit(:content, :recipient, :pair_date, :project_name, :show_up, :check_in, :percent_drive, :clarity_of_communication)
  end

end
