Blog::Application.routes.draw do
	root :to => 'articles#index'
  	get "tags/index"
  	get "tags/show"
	resources :comments
  	resources :articles
  	resources :tags
  	resources :user_sessions,
  		only: [ :new, :create, :destroy ]
	resources :users
	get 'login' => 'user_sessions#new', :as => :login
	post 'logout' => 'user_sessions#destroy', :as => :logout
end
