Rails.application.routes.draw do

root "reviews#index"
get "/users/auto" => "users#auto"

  resources :users
  resources :feedbacks do
    resources :reviews
  end

  get "/admins" => "admins#show"

  get "/sessions/new" => "sessions#new", :as => "new_sessions"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy", :as => :destroy_session


  get "/reviews" => "reviews#index", :as => "reviews"

end
