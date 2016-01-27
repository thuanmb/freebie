Rails.application.routes.draw do

  resources :categories
  get 'welcome/index'

  resources :posts do
    resources :post_items
    resources :requests do
      collection do
        put :accept
        put :cancel
    end
    end

    member do
      put :publish
      put :close
      put :reopen
      post :request_post
      post :send_message
    end

    collection do
      get :my
      get :byLocation
      get :search
    end
  end

  mount RailsAdmin::Engine => '/secret', as: 'rails_admin'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users

  resources :giveaways, only: [:index] do
    collection do
      get :select_location
      put :edit_location
      get :select_category
      get :select_campaign
    end
  end

  resources :campaigns, only: [:index, :show] do
    member do
      post :ask_to_donate
    end
  end

  namespace :me do
    resources :campaigns do
      member do
        put :publish
        put :expire
        put :finish
      end
      resources :campaign_items, only: [:edit, :update, :new, :create]
      resources :donations
      #, only: [:edit, :update, :new, :create]
    end

    resources :conversations do
      member do
        post :reply
        post :restore
      end
      collection do
        delete :empty_trash
      end
    end
  end

  root 'welcome#index'

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
