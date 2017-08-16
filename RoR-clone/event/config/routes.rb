Rails.application.routes.draw do

root 'users#new'



  get 'meetings/:user_id' => 'meetings#index'

  get 'meetings/:id' => 'meetings#show'

  post 'meetings' => 'meetings#create'

  get 'meetings/:id/edit' => 'meetings#edit'

  patch 'meetings/:id' => 'meetings#update'

  delete 'meetings/:id/delete' => 'events#destroy'

  get 'users/new' => 'users#new'

  post 'users' => 'users#register'

  get 'users/:id/edit' => 'users#edit'

  patch 'users/:id' => 'users#update'

  delete 'users/:id/delete' => 'users#destroy'

  get 'login' => 'sessions#login'

  post 'login' => 'sessions#create'

  delete 'logout/:id' => 'sessions#destroy'

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

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