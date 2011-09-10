KernDist::Application.routes.draw do
  resources :devices

  resources :kerns

  get "home/index"
  root :to => "home#index"

end
