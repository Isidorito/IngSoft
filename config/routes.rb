Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}
  #  , registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :accommodation_types

  resources :layouts

  resources :accommodations

  resources :questions

  resources :requests

  root 'layouts#index'

  #Routea los html de la barra de direcciones que estàn en layouts.

  get '/admin'               ,to:'accommodation_types#admin'
  get '/admin/new'           ,to:'accommodation_types#new'    
  get '/user'                ,to:'accommodations#user'
  get '/search'              ,to:'accommodations#search'
  get '/about'               ,to:'layouts#about'
  get '/search'              ,to:'accommodations#index'
  get '/accommodation/new'   ,to:'accommodations#new'
  get '/accommodation'       ,to:'accommodations#cambioStatus'
  get '/accommodation/more'  ,to:'accommodations#more'

  get '/users/sign_up'      ,to:'devise/registrations#new'
end
