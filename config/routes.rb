Rails.application.routes.draw do
  devise_for :auth_users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "patient_dashboard#index"
  get 'users/index'
  get '/users/login'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get 'patient_dashboard/index'
end
