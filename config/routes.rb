Rails.application.routes.draw do
  devise_for :users
  # get "/", :controller => "dogs", :action => "index"
  root 'dogs#index'
  # Routes for the Food_purchase resource:
  # CREATE
  get "/food_purchases/new", :controller => "food_purchases", :action => "new"
  post "/create_food_purchase", :controller => "food_purchases", :action => "create"

  # READ
  get "/food_purchases", :controller => "food_purchases", :action => "index"
  get "/food_purchases/:id", :controller => "food_purchases", :action => "show"

  # UPDATE
  get "/food_purchases/:id/edit", :controller => "food_purchases", :action => "edit"
  post "/update_food_purchase/:id", :controller => "food_purchases", :action => "update"

  # DELETE
  get "/delete_food_purchase/:id", :controller => "food_purchases", :action => "destroy"
  #------------------------------

  # Routes for the Dog resource:
  # CREATE
  get "/dogs/new", :controller => "dogs", :action => "new"
  post "/create_dog", :controller => "dogs", :action => "create"

  # READ
  get "/dogs", :controller => "dogs", :action => "index"
  get "/dogs/:id", :controller => "dogs", :action => "show"

  # UPDATE
  get "/dogs/:id/edit", :controller => "dogs", :action => "edit"
  post "/update_dog/:id", :controller => "dogs", :action => "update"

  # DELETE
  get "/delete_dog/:id", :controller => "dogs", :action => "destroy"
  #------------------------------

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
