Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :rooms
  root 'app_pages#index'


  # devise_for :users
  # devise_for :users, controllers: { registrations: 'registrations' }
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations =>'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/my_rooms', to: 'app_pages#user_rooms', as: 'user_rooms', via: 'get'
  match '/account_setting', to: 'app_pages#manage_account', as: 'manage_account', via: 'get'
  match '/search', to: 'app_pages#search', as: 'search', via: 'get'
  match '/rooms/profile/:id', to: 'app_pages#room_profile', as: 'room_profile', via: 'get'
  match '/book/:id', to: 'app_pages#book', as: 'book', via: 'get' 
  match '/bookings', to: 'app_pages#my_bookings', as: 'booking', via: 'get'
  match '/add_comment/:id', to: 'app_pages#comment', as: 'add_comment', via: 'get'
end
