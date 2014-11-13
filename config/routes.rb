Rails.application.routes.draw do

  resources :status
  root 'status#index'

end
