class AdminsController < ApplicationController

  def show
    if logged_in? && current_user.is_admin
      @hall_of_fames = Feedback.exemplary
      @user = current_user
      @bad_feedbacks = Feedback.inappropriate
    else
      redirect_to '/'
    end
  end

end
