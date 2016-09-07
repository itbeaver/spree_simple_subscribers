Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :subscribers do
      get :download, on: :collection
    end
  end
  resources :subscribers, only: [:create]
end
