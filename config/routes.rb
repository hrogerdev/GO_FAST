Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :mules, except: [ :destroy, :edit, :update ] do
    resources :offers, only: [ :create ]

  end

  resources :offers, only: [] do
    member do
      patch :accepted
      patch :refused
    end
  end

  resource :profile, only: [ :show ]


end
