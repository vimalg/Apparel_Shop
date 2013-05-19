ApparelShop::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
 
    devise_for :users, :controllers => {:registrations => 'registrations'}

    resources :products
    match 'store' => 'store#index'
    
    resources :authentications
  #get "cart/index"

  #get "cart/add"

  resources :carts

  get "store/index"

  match ':controller(/:action(/:id(/:format)))'

  root :to => 'authentications#index'


devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'

end
end