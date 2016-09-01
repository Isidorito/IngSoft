Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :accommodation_types

  #resources :layouts

  root 'layouts#index'

end
