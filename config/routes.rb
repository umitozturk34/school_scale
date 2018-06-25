Rails.application.routes.draw do
  devise_for :schools
  devise_for :admins
  resources :forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  get '/form/message', :to => 'home#message'

  get '/form_init', :to => 'form_init#index'

  resources :students

end
