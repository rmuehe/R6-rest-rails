Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# Ensure you have defined root_url to *something* in your config/routes.rb.
#      For example:

#        root to: "home#index"
     
#      * Not required for API-only Applications *