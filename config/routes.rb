StacheOverflow::Application.routes.draw do
  root to: 'questions#index'
  resources :questions do
    get 'best_answer/:answer_id', to: 'questions#best_answer', as: :best_answer
    resources :answers
  end
  resources :comments
  resources :users

  get '/auth/:twitter/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'

  post '/login', to: 'sessions#login'

  put '/questions/upvote/:id', to: "questions#increase_vote"
  put '/questions/downvote/:id', to: "questions#decrease_vote"

end
