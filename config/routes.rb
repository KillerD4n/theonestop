Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  resources :users, except: [:index] do
    resources :sessions, only: [:new, :create]

  end
end
