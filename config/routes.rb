Rails.application.routes.draw do
  get 'landing/index'
  get 'landing', to: redirect('landing/index')
  resources :articles do
    resources :comments
  end
  root controller: :landing, action: :index
end
