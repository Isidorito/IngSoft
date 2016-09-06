Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :accommodation_types

  resources :layouts

  resources :accommodations

  root 'layouts#index'

  #Routea los html de la barra de direcciones que estàn en layouts.

  get '/admin'     ,to:'accommodation_types#admin'
  get '/admin/new' ,to:'accommodation_types#new'    
  get '/user'  	   ,to:'layouts#user'
  get '/search'    ,to:'accommodations#search'
  get '/about'     ,to:'layouts#about'
  get '/search'    ,to:'accommodations#index'

end
