Rails.application.routes.draw do
  resources :comments
	root to: 'welcome#home'


	resources :users, except: [ :new ]

  resources :articles
  resources :categories

	get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
