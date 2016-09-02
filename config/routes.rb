Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :accommodation_types

  resources :layouts

  root 'layouts#index'

  #Routea los html de la barra de direcciones que estàn en layouts.

  get '/admin' ,to:'layouts#admin'
  get '/user'  ,to:'layouts#user'
  get '/search',to:'layouts#search'
  get '/about' ,to:'layouts#about'

end
