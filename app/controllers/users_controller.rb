class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def auto
    if request.xhr?
      users = User.all.pluck(:full_name)
      render json: users, layout:false, content_type:
      "application/json"
    end
  end

  def admin


  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @errors = @user.errors.full_messages
      flash.now[:notice] ="Unable to create account."
      render 'new'
    end
  end

  def show
    redirect_to "/", notice: "Review three pieces of feedback today to unlock your profile!" unless current_user.good_reviewer?
    @user = current_user
    @feedback_given = @user.given_feedbacks
    @feedback_received = @user.received_feedbacks.select {|feedback| feedback.return_if_appropriate}
  end



  private

  def user_params
    params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
  end
end
