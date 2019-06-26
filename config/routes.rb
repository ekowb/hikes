Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :mountains, only: [:index, :show]
  resources :climbers, only: [:index, :show, :create, :new, :edit, :update]
end
