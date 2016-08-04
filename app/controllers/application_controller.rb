class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception, except: :index
end
