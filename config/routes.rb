Rails.application.routes.draw do

  devise_for :users
 root 'dashboard#index'

get "/", :controller => "dashboard", :action => "index"

  # Routes for the Entry resource:
  # CREATE
  get "/entries/new", :controller => "entries", :action => "new"
  post "/create_entry", :controller => "entries", :action => "create"

  # READ
  get "/entries", :controller => "entries", :action => "index"
  get "/entries/:id", :controller => "entries", :action => "show"

  # UPDATE
  get "/entries/:id/edit", :controller => "entries", :action => "edit"
  post "/update_entry/:id", :controller => "entries", :action => "update"

  # DELETE
  get "/delete_entry/:id", :controller => "entries", :action => "destroy"
  #------------------------------

  # Routes for the Exercise resource:
  # CREATE
  get "/exercises/new", :controller => "exercises", :action => "new"
  post "/create_exercise", :controller => "exercises", :action => "create"

  # READ
  get "/exercises", :controller => "exercises", :action => "index"
  get "/exercises/:id", :controller => "exercises", :action => "show"

  # UPDATE
  get "/exercises/:id/edit", :controller => "exercises", :action => "edit"
  post "/update_exercise/:id", :controller => "exercises", :action => "update"

  # DELETE
  get "/delete_exercise/:id", :controller => "exercises", :action => "destroy"
  #------------------------------

  # Routes for the Following resource:
  # CREATE
  get "/followings/new", :controller => "followings", :action => "new"
  post "/create_following", :controller => "followings", :action => "create"

  # READ
  get "/followings", :controller => "followings", :action => "index"
  get "/followings/:id", :controller => "followings", :action => "show"

  # UPDATE
  get "/followings/:id/edit", :controller => "followings", :action => "edit"
  post "/update_following/:id", :controller => "followings", :action => "update"

  # DELETE
  get "/delete_following/:id", :controller => "followings", :action => "destroy"
  #------------------------------

  # Routes for the Goal resource:
  # CREATE
  get "/goals/new", :controller => "goals", :action => "new"
  post "/create_goal", :controller => "goals", :action => "create"

  # READ
  get "/goals", :controller => "goals", :action => "index"
  get "/goals/:id", :controller => "goals", :action => "show"

  # UPDATE
  get "/goals/:id/edit", :controller => "goals", :action => "edit"
  post "/update_goal/:id", :controller => "goals", :action => "update"

  # DELETE
  get "/delete_goal/:id", :controller => "goals", :action => "destroy"
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
