class UsersController < ApplicationController
  def new
    @user = User.new
  end

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
    @user = current_user
    @feedback_given = @user.given_feedbacks
    @feedback_received = @user.received_feedbacks
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
