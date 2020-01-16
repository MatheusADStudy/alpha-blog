Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Root
  root'welcome#home'
  
  # About page
  get '/about', to: 'welcome#about'

  # User login, session create and destroy
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'



  get 'signup', to: 'users#new' 
  
  # post 'users', to: 'users#create'
  resources :articles
  resources :users, except: [:new]

end
