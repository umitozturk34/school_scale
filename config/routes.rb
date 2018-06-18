Rails.application.routes.draw do
  resources :forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  get '/form_init', :to => 'form_init#index'

  resources :students

end