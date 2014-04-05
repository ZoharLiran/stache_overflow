StacheOverflow::Application.routes.draw do
  root to: 'questions#index'
  resources :questions
  resources :answers
  resources :comments
  resources :users

  get '/auth/:twitter/callback', to: 'sessions#create'
end
