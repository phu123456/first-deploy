Rails.application.routes.draw do

  post 'trucks/:id/reEngine', to: 'trucks#reEngine', as: 'truck_reEngine'
  post 'trucks/:id/reTransmission', to: 'trucks#reTransmission', as: 'truck_reTransmission'
  post 'trucks/:id/reGear', to: 'trucks#reGear', as: 'truck_reGear'
  post 'trucks/:id/reAir', to: 'trucks#reAir', as: 'truck_reAir'
  post 'trucks/:id/reCoolant', to: 'trucks#reCoolant', as: 'truck_reCoolant'
  post 'trucks/:id/reBlower', to: 'trucks#reBlower', as: 'truck_reBlower'

  resources :maintenances
  devise_for :users
  resources :blowers
  resources :coolants
  resources :airs
  resources :gears
  resources :transmissions
  resources :engines
  resources :trips

  resources :trucks do
    resources :trips
  end

  root to: "trucks#index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
