Rails.application.routes.draw do
  resources :activities
  resources :activities do
    resources :notes
  end
  root 'main#index'
end
