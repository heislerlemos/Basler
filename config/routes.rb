Rails.application.routes.draw do
  resources :mapas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "bemvindos#index"
  resources :services
  resources :clients
  match '/contacts',  to: 'contacts#new', via:'get'
  resources "contacts", only: [:new, :create]
end
	