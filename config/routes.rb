Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post '/google_login_api/callback', to: 'google_login_api#callback'

  resources :users, only: %i[new create]
  resources :password_resets, only: %i[new create edit update]
  resources :questions, only: %i[index show] do
    member do
      get 'answer'
      get 'explanation'
    end
    collection do
      get 'difficulty/:difficulty', action: :difficulty, as: :difficulty
    end
  end
  get 'on_boardings', to: 'on_boardings#edit'
  resource :on_boardings, only: %i[update]
end
