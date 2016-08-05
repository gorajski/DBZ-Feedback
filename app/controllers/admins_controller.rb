class AdminsController < ApplicationController

  def show
    if logged_in? && current_user.is_admin
      @hall_of_fames = Feedback.where(check_in: true)
      @user = current_user
    else
      redirect_to '/'
    end
  end

end
