Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts
  get '/login', to: 'sessions#new', as: 'login'
  get '/auth/github/callback', to: 'users#create'
  get '/logout', to: 'sessions#destroy'
end
