StacheOverflow::Application.routes.draw do
  root to: 'questions#index'
  resources :questions
  resources :answers
  resources :qcomments
  resources :acomments
end
