Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "welcome#home"
  get "/about", to: "pages#about"

  # get "/blog", to: "blog#index"
  # post "/blog", to: "blog#create"
  # get "/blog/new", to: "blog#new"
  # get "/blog/:id", to: "blog#show"
  # get "/blog/:id/edit", to: "blog#edit"
  # patch "/blog/:id", to: "blog#update"
  # delete "/blog/:id", to: "blog#destroy"

  resources :blogs
  #admin
  resources :articles
end
