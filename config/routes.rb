StacheOverflow::Application.routes.draw do
  get "users/new"
  root to: 'questions#index'
  resources :questions
  resources :answers
  resources :qcomments
  resources :acomments
end
