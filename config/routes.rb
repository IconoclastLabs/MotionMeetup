Motionmeetup::Application.routes.draw do

  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'


  resources :blogs

  resources :archives


  root :to => "home#index"
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

end
