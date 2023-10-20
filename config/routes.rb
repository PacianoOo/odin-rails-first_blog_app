Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/homepage/new', to: 'home#new', as: :new_blog_post
  get '/homepage/:id/edit', to: 'home#edit', as: :edit_blog_post
  patch '/homepage/:id', to: 'home#update'
  delete '/homepage/:id', to: 'home#destroy'
  get 'homepage', to: 'home#homepage'
  get '/homepage/:id', to: 'home#show', as: :blog_post
  post '/homepage', to: 'home#create', as: :blog_posts
  # Defines the root path route ("/")
  # root "articles#index"
end
