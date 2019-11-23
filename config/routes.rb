Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "boards#index"

  
  patch 'completed_list_task/:list_id/:id', to: 'tasks#completed', as: 'completed'

  resources :boards do
    resources :lists 
  end

  resources :lists do
    resources :tasks
  end

end
