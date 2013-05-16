Motionmeetup::Application.routes.draw do
  resources :archives


  root :to => "home#index"
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

end
