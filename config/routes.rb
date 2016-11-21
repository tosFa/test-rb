Rails.application.routes.draw do
	root to: 'welcome#home'
	get 'signup', to: 'users#new'
	resources :users, except: [ :new ]

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
