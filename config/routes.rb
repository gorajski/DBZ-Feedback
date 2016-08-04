Rails.application.routes.draw do

resources :users, :feedbacks, :reviews
root "reviews#index"

  get "/sessions/new" => "sessions#new", :as => "new_sessions"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy", :as => :destroy_session

end
