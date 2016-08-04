Rails.application.routes.draw do

resources :users
root "reviews#index"

get "/log_in" => "sessions#new", as: :new_session
end
