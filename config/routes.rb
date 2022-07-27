Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "welcome#home"
  get "/about", to: "pages#about"
  # get "/contact", to: "pages#contact"
  # get "/faq", to: "pages#faq"
  get "/blog", to: "blog#index"


end
