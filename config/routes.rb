Rails.application.routes.draw do
  # get "/", to: "welcome#home"
  get "/", to: "blogs#index"

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
  resource :sessions, only: [:create, :destroy]

  resource :users, except:[:destroy, :new] do 
    get :sign_up
    get :sign_in
  end
end
