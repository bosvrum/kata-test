Rails.application.routes.draw do
  root 'languages#index'

  resources :languages, only: [:index]
end
