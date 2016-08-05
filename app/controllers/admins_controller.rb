class AdminsController < ApplicationController

  def show
    if logged_in? && current_user.is_admin
      @user = current_user
    else
      redirect_to '/'
    end
  end

end
