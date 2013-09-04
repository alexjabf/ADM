ADM::Application.routes.draw do

  #get "inscriptions/index"
  match 'inscripciones' => 'inscriptions#index', :as => :inscriptions_index
  
  match 'conferencistas' => 'speakers#index', :as => :speakers
  match 'conferencistas/nuevo' => 'speakers#new', :as => :new_speaker
  match 'conferencistas/:id' => 'speakers#show', :as => :speaker
  #match 'conferencistas/:id/editar' => 'speakers#edit', :as => :edit_speaker
  resources :speakers
  
  match 'eventos' => 'events#index', :as => :events
  match 'eventos/nuevo' => 'events#new', :as => :new_event
  match 'eventos/:id' => 'events#show', :as => :event
  match 'eventos/:id/editar' => 'events#edit', :as => :edit_event
  resources :events

  match 'hoteles' => 'hotels#index', :as => :hotels
  match 'hoteles/nuevo' => 'hotels#new', :as => :new_hotel
  match 'hoteles/:id' => 'hotels#show', :as => :hotel
  match 'hoteles/:id/editar' => 'hotels#edit', :as => :edit_hotel
  resources :hotels

  #get "exposition_center/index"
  match 'centro-de-exposiciones' => 'exposition_center#index', :as => :exposition_center
  
  get "ips/index"   
  
  #get "maps/index"
  match 'mapas' => 'maps#index', :as => :maps_index

  #get "contact_info/index"
  match 'informasion-de-contacto' => 'contact_info#index', :as => :contact_info_index
  
  #get "info/index"
  match 'informasion-de-desarollo-web' => 'info#index', :as => :info_index

  match 'user/edit' => 'users#edit', :as => :edit_current_user

  match 'users/edit' => 'users#edit', :as => :edit_current_users

  match 'signup' => 'users#new', :as => :signup

  match 'logout' => 'sessions#destroy', :as => :logout

  match 'login' => 'sessions#new', :as => :login
  
  match 'ips/:id', :to => 'ips#show'
  
  #match 'exposition_center/new' => 'exposition_center#new', :as => :new_exposition_center
  
  #resources :exposition_center
  
  resources :ips

  resources :sessions

  resources :users


  match 'comite-organizador' => 'oc_members#index', :as => :oc_members
  match 'comite-organizador/nuevo' => 'oc_members#new', :as => :new_oc_member
  match 'comite-organizador/:id' => 'oc_members#show', :as => :oc_member
  match 'comite-organizador/:id/editar' => 'oc_members#edit', :as => :edit_oc_member
  resources :oc_members
  
  match 'comentarios' => 'comments#index', :as => :comments
  match 'comentarios/nuevo' => 'comments#new', :as => :new_comment
  match 'comentarios/:id' => 'comments#show', :as => :comment
  match 'comentarios/:id/editar' => 'comments#edit', :as => :edit_comment
  resources :comments
  
  mount Ckeditor::Engine => '/ckeditor'

  get "about_system/index"

  get "welcome/index"


  # The priority is based upon order of creation:
  # first created -> highest priority.

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

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
