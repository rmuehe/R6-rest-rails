Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/test', to: 'test#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :members do
        resources :facts
      end
    end
  end

end

# Ensure you have defined root_url to *something* in your config/routes.rb.
#      For example:

#        root to: "home#index"
     
#      * Not required for API-only Applications *