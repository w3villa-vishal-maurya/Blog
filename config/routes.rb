Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "", to: "blogs#index"
  get "/blog/new", to: "blogs#new"
  post "/blog/create", to: "blogs#create"
  get "/blog/index", to: "blogs#index", as: "blog_index"
  get "/blog/:id", to: "blogs#show", as: "blog_show"
  put "/blog/:id/update", to: "blogs#update", as: "blog_update"
  get "/blog/:id/edit", to: "blogs#edit", as: "blog_edit"
  delete "/blog/:id", to: "blogs#destroy", as: "blog_delete"

  # Defines the root path route ("/")
  # root "articles#index"
end
