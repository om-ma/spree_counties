Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :api, defaults: { format: 'json' } do
    namespace :v2 do
      namespace :storefront do
        resources :states, :only => [:show]
        resources :counties, :only => [:index, :show]
      end
    end
  end

  namespace :admin do
    resources :counties
    resources :states do
      resources :counties
    end
  end
end
