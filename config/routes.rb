Rails.application.routes.draw do
  devise_for :users
  resources :dashboard
  get 'static_pages/home'
  #get "help" => 'Static_Pages#help'
  get 'static_pages/help'
  root :to => 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
