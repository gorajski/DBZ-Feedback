Rails.application.routes.draw do
resources :users
root "sessions#new"

  get "/sessions/new" => "sessions#new", :as => "new_sessions"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"

  # resources :sessions

end
