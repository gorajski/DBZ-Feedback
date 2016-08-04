module ApplicationHelper
  def current_user
  	@current_user ||= User.find(session[:user_id]) if logged_in?
  end

  def logged_in?
  	!(session[:user_id]==nil)
  end

  def authorize
  	redirect_to "/sessions/new" unless current_user
  end
end