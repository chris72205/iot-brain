Rails.application.routes.draw do
  use_doorkeeper

  root :to => 'users#index'
  
  post 'register' => "user#create"

  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
