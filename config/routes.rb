Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :facilities
  resources :events

  root 'pages#landing'
  get 'home'          =>      'dashboard#index', as: :user_root
  get 'schedule'      =>      'pages#schedule'
  get 'payment'       =>      'pages#payment'
  get 'attendance'    =>      'pages#attendance'
  get 'help'          =>      'pages#help'
  get 'locations'     =>      'pages#locations'
  get 'forms'         =>      'pages#forms'
  get 'account'       =>      'pages#account'
  get 'contact'       =>      'pages#contact'
  get 'dashboard'     =>      'dashboard#index'



end
