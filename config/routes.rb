Rails.application.routes.draw do

resources :users
resources :feedbacks do
  resources :reviews
end

root "reviews#index"

  get "/sessions/new" => "sessions#new", :as => "new_sessions"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy", :as => :destroy_session

  get "/reviews" => "reviews#index", :as => "reviews"
end
