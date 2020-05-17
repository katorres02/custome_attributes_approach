Rails.application.routes.draw do
  resources :attribute_options
  resources :custome_attributes
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'custome_attributes#index'
end
