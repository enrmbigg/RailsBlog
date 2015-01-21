Blog::Application.routes.draw do
  get "tags/index"
  get "tags/show"
	resources :comments
  	resources :articles
  	resources :tags
end
