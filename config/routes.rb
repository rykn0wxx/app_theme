Rails.application.routes.draw do
  devise_for :users
  get 'login' => 'home#login', :as => 'login'
  get 'mindex' => 'home#mindex', :as => 'mindex'
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
