Rails.application.routes.draw do

get "/users/auto" => "users#auto"

  resources :users
  resources :feedbacks do
    resources :reviews
  end

  get "/sessions/new" => "sessions#new", :as => "new_sessions"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy", :as => :destroy_session


  get "/reviews" => "reviews#index", :as => "reviews"

end
