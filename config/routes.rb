Teste2::Application.routes.draw do
  
  resources :sites
  devise_for :users

  get "home/index"
  post "home/welcome"

  authenticated :user do
    root :to => "sites#index"
  end
  root :to => 'home#index'
end
