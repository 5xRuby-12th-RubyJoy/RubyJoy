Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  resources :orders, only: [:create] do
    member do
      get :checkout
      post :pay
    end
  end

  resources :events

  resources :stores do
    member do
      post :update
    end
    resources :products
  end
  
end
