Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post '/google_login_api/callback', to: 'google_login_api#callback'

  resources :users, only: %i[new create]
  resources :password_resets, only: %i[new create edit update]
  resources :questions, only: %i[index show] do
    resources :likes, only: %i[create destroy]
    resources :bookmarks, only: %i[create destroy]
    member do
      get 'answer'
      get 'explanation'
      get 'recommend'
      get 'recommend_explanation'
    end
    collection do
      get 'difficulty/:difficulty', action: :difficulty, as: :difficulty
      get 'result'
      get 'bookmarks'
      get 'questions'
      get 'search'
    end
  end
  resources :results, only: %i[create]
  resource :profile, only: %i[show edit update]
  get 'on_boardings', to: 'on_boardings#edit'
  resource :on_boardings, only: %i[update]
  namespace :admin do
    root to: 'questions#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'

    resources :users, only: %i[index show destory]
    resources :questions, only: %i[index new create show destroy]
    resources :musics, only: %i[new create]
    resources :lyrics, only: %i[new create]
    resources :choices, only: %i[new create]
  end
end