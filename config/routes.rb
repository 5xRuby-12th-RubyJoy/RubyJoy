Rails.application.routes.draw do
  root "pages#home"
  get 'sign_up_session', to: 'pages#sign_up_session'
  get 'log_in_session', to: 'pages#sign_in_session'
  get 'home', to: 'pages#home'
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get 'new_vender_registration', to: "users/registrations#vender_new"
    post 'vender_sign_up', to: "users/registrations#vender_create"

  end

  resources :orders, only: [:create] do
    member do
      get :checkout
      post :pay
    end
  end


 
  
  resources :products 
     

  
  

  resources :events
  resources :stores 

end
