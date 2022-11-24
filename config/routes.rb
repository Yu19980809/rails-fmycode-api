Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, default: { format: :json } do
    namespace :v1 do
      resources :stories, only: %i[index show create]
    end
  end
end
