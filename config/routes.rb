Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root "restaurants#index"
 resources :restaurants, only: [:index, :show]
 resources :categories, only: :show
 namespace :admin do
    resources :restaurants, except: [:new, :create, :edit, :update, :destroy]
    root "restaurants#index"
   
 end

end
