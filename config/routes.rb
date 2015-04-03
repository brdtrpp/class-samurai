Rails.application.routes.draw do

  root 'pages#landing'

  resources :events

  devise_for :users
  get 'schedule'      =>      'pages#schedule'
  get 'payment'        =>     'pages#payment'
  get 'attendance'    =>      'pages#attendance'
  get 'help'          =>      'pages#help'
  get 'locations'     =>      'pages#locations'
  get 'forms'         =>      'pages#forms'
  get 'account'       =>      'pages#account'
  get 'contact'       =>      'pages#contact'
  get 'landing'       =>      'pages#landing'
  get 'dashboard/index'

  # defaults to dashboard

  
  # view routes
  get '/dashboard' => 'dashboard#index'
  get 'pages/blank_page'
  get 'pages/blank_page2'
  


end
