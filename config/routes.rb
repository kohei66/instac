Rails.application.routes.draw do
  root to: "sessions#new"
  resources :users, only:[ :new, :create, :show ]
  resources :sessions, only:[:new, :create, :destroy ]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy]
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  end
