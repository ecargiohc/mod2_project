Rails.application.routes.draw do
  resources :comments
  resources :logs
  resources :achievements
  resources :user_goals
  resources :goals
  resources :users
  
  root "logins#new"
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/signin', to: "logins#new"
  post '/signin', to: "logins#create"
  delete '/signout', to: "logins#destroy"

end
