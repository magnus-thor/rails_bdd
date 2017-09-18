Rails.application.routes.draw do
  get 'landing/index'
  get 'landing', to: redirect('landing/index')
  resources :articles
  root controller: :landing, action: :index
end
