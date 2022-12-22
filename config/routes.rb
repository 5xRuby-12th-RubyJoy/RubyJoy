Rails.application.routes.draw do
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'sign_in_session', to: 'pages#sign_in_session'

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

  resources :products, only: [] do
    member do
      get :buy
    end
  end

  resources :events do
    resources :event_products, only: [:destroy]
    member do
      patch :add_gift
    end
  end

  resources :events do
    member do
      get :stores, to: 'stores#index', as: 'stores'
    end
  end

  resources :events, only: [] do
    resources :stores, only: [] do
      resources :products
    end
  end

<<<<<<< Updated upstream


  resources :stores do
    resources :products
     member do
       get :checkout_order
     end
=======
  resources :stores do
    resources :products 
  end
  
  resources :stores do
      get :show_order, to: 'stores#show_order'
>>>>>>> Stashed changes
  end
end
