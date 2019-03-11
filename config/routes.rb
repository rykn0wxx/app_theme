Rails.application.routes.draw do
  resources :fact_call_details
  namespace :admin do
    resources :tmp_fact_call_details
  end
  devise_for :users
  get 'login' => 'home#login', :as => 'login'
  get 'mindex' => 'home#mindex', :as => 'mindex'
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
