Rails.application.routes.draw do
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resources :questions, only: %i[index show] do
    member do
      get 'answer'
      get 'explanation'
    end
    collection do
      get 'difficulty/:difficulty', action: :difficulty, as: :difficulty
    end
  end
end
