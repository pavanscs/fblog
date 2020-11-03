Rails.application.routes.draw do
  get 'users/registration'
  # post '/users' => 'user#create'
  
  root 'users#registration'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
