Rails.application.routes.draw do

  get "/sessions/new" => "sessions#new", :as => "new_sessions"
  delete "/sessions" => "sessions#destroy"

  # resources :sessions

end
