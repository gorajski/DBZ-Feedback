Rails.application.routes.draw do

  # get "log_in" => "sessions#new", :as => "new_sessions"
  # delete "log_out" => "sessions#destroy"

  resources :sessions

end
