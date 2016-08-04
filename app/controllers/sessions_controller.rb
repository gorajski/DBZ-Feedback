class SessionsController < ApplicationController

  # def new
  # end

  def create
    @user = User.find_by(email: sessions_params[:email])

    if @user && @user.authenticate(sessions_params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to new_sessions_path
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to '/'
  end


  private

  def sessions_params
      params.require(:sessions).permit(:email, :password)
  end

end
