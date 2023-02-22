Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  # Defines the root path route ("/")
  # root "articles#index"

  # get "home", to: "pages#home"
  get "about", to: "pages#about", as: :about
  get "contact", to: "pages#contact", as: :contact
  get "search", to: "pages#search", as: :search
  # VERB "PAGE_NAME", to: "CONTROLLER#ACTION"
end
