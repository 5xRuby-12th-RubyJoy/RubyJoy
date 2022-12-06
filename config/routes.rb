Rails.application.routes.draw do
  root 'pages#home'
  get 'home', to: 'pages#home'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  resources :orders, only: [:create] do
    member do
      get :checkout
      post :pay
    end
  end

  resources :events

  resources :products
end
