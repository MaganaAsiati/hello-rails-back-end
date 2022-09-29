Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :greetings     
  end
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '', to: 'static#index', constraints: lambda { |req|
  !req.xhr? && req.format.html?
}
  root "static#index"
end
