Motionmeetup::Application.routes.draw do

  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :archives
  post "/" => "home#signup"
  root :to => "home#index"

end