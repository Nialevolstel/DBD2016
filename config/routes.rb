Rails.application.routes.draw do
  resources :instruments
  resources :medical_team_medical_staffs
  resources :hospital_ward_surgeries
  resources :medical_staff_specialities
  resources :surgery_supplies
  resources :receipts
  resources :surgeries
  resources :medical_teams
  resources :surgery_states
  resources :supplies
  resources :specialities
  resources :receipt_states
  resources :surgery_type_instrument_types
  resources :instrument_types
  resources :patients
  resources :hospital_wards
  resources :surgery_types
  resources :medical_staffs
  resources :article_clasifications
  resources :index
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

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

  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'sessions'}

  devise_scope :user do
    get 'users/sign-in' => "devise/sessions#new", :as => :login
  end
end

