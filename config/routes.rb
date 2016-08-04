Rails.application.routes.draw do

resources :users
root "reviews#index"

  get "/sessions/new" => "sessions#new", :as => "new_sessions"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"

end
