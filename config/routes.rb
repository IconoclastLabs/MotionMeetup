Motionmeetup::Application.routes.draw do
  root :to => "home#index"
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

end
