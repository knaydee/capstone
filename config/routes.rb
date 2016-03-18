Rails.application.routes.draw do

  root 'welcome#index'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  resources :vets do
    resources :services do
      delete '/destroy_servicevet' => 'services#destroy_servicevet', as: :delete_servicevet
    end
  end

  resources :users do
    resources :pets
  end
  get 'users/:id/vet_index' => 'users#vet_index', as: :uservets

  resources :services

  match 'vets/:id/create_uservet', to: 'vets#create_uservet', via: [:get, :post], as: :favorite

  patch 'vets/:id/set_primary' => 'vets#set_primary', as: :primary
  delete 'vets/:id/destroy_uservet' => 'vets#destroy_uservet', as: :unfavorite

  get '/logout' => 'sessions#destroy'

  get "/.well-known/acme-challenge/#{ENV['LE_AUTH_REQUEST']}", to: 'welcome#letsencrypt'

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
