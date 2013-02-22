Mobbynet::Application.routes.draw do

#  get "omniauth_callbacks/facebook"

  resources :events do
    collection do
      get 'user_events'
    end
  end


  get 'place' =>"users#place"
  devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  root :to => 'home#index'
end
