Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :movies
      resources :seasons
      resources :movies_and_seasons
      resources :users do
        member do
          post 'purchase'
          get 'purchases'
        end
      end
    end
  end
end
