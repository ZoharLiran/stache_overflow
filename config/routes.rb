StacheOverflow::Application.routes.draw do
  root to: 'questions#index'
  resources :questions do
    get 'best_answer/:answer_id', to: 'questions#best_answer', as: :best_answer
  end
  resources :answers
  resources :comments
  resources :users

  get '/auth/:twitter/callback', to: 'sessions#create'
end
