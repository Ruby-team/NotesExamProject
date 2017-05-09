Rails.application.routes.draw do
  devise_for :models
  resources :activities
  resources :activities do
    resources :notes
    resources :filees
  end
  root 'main#index'
end
