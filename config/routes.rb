Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :subscribers
  end
  resources :subscribers, only: [:create]
end
