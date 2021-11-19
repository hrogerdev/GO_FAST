Rails.application.routes.draw do
  get 'mules/index'
  devise_for :users
  root to: 'pages#home'

  resources :mules, except: %i[destroy edit update] do
    resources :offers, only: [:create]
  end

  resources :offers, only: [] do
    member do
      patch :accepted
      patch :refused
    end

    collection do
      get :distance
    end
  end

  resource :profile, only: [:show]
end
