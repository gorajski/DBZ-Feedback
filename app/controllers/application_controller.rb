class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, except: "users#auto"
end
