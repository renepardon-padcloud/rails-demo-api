##
# The priority is based upon order of creation:
# first created -> highest priority.
#
ActivescaffoldTestApi::Application.routes.draw do
  # These are the admin routes.
  namespace :admin do
    resources :users

    # These admin routes are for PCM users only.
    namespace :pcm do

    end
  end

  # TODO: We may want the language as paramater within the URI path?
  # These are the API level routes.
  namespace :api do
    # Contains the routes for API version 1.
    namespace :v1 do
      #resources :resourcename
    end

    # Contains the routes for API version 1.
    namespace :v2 do
      #resources :resourcename
    end

    # Map unversioned resource requests to the latest (v2) version.
    match 'v:api/*path', :to => redirect("/api/v2/%{path}")
    match '*path', :to => redirect("/api/v2/%{path}")
  end

  # The root/landingpage of our application. Should point to the login page if
  # current visitor is not already authenticated.
  root :to => 'welcome#index'


  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
