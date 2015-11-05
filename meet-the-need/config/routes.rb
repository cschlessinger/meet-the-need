Rails.application.routes.draw do
  devise_for :developers
  devise_for :customers
  get 'homepage/index'
  get 'homepage/search' => 'homepage#search'

  # devise_for :developers, controllers: { registrations: "registrations" }
  # devise_for :customers, controllers: { registrations: "registrations" }


  # get '/sign_up(.:format)' => 'devise/registrations#new'

  resources :developers do
    member do
      get 'profile'
    end
  end
  resources :customers do
    member do
      get 'profile'
    end
  end
  resources :projects
  resources :requests
  resources :review_requests
  resources :developer_technologies
  resources :developer_topics
  resources :project_technologies
  resources :project_topics
  resources :conversations
  root 'homepage#index'

  # delete '/delete_technology/:tech_id' => 'developers#delete_technology'
  # patch '/add_technology/:tech_id' => 'developers#add_technology'
  # delete '/delete_topic/:topic_id' => 'developers#delete_topic'
  # patch '/add_topic/:topic_id' => 'developers#add_topic'
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
