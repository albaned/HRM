Rails.application.routes.draw do
  resources :interviews
  resources :refuzuars
  resources :kontrata

  get 'kontrata/new/:kontrata_id', to: 'kontrata#new', as: 'new_kontrata'
  get 'all_checked/index'

  resources :pcs
  resources :gjuhas
  resources :qytetets
  resources :dergoemails
  get 'apliko/hapi_3'
  get 'apliko/pune'
  root 'pozita#zgjidh'
  get 'pushimet/index'
  get("pozita/zgjidh")
  get("pozita/kalo")
  get("pozis/index")
  get("formularis/index")
  get("punetoris/index")
  get("statuses/index")
  get("kontrata/kontrata_print")
  resources :statuses
  resources :pozis
  resources :punetoris
  resources :punetoris do
    collection { post :search, to: 'punetoris#index' }
  end
  get 'dashboard/new'
  get 'home/index'

  resources :formularis do
    collection { post :search, to: 'formularis#index' }
  end
  devise_for :users
  get 'dergoemails/new/:id' => 'dergoemails#new', as: "new_dergoemails"
  post 'apliko/pune'
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
