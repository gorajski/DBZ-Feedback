class FeedbacksController < ApplicationController

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedbacks_params)

    if @feedback.save
      flash.now[:notice] = "Thank you for submitting feedback"
      redirect_to new_feedback_path
    else
      @errors = @feedback.errors.full_messages
      render new_feedback_path
    end
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  private
  def feedbacks_params
    params.require(:feedback).permit(:content, :pair_date, :project_name, :show_up?, :check_in?, :percent_drive, :clarity_of_communication)
  end

end
