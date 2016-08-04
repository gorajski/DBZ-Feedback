module UsersHelper

  def active_tab
    params[:active_tab] || "received"
  end

end
