Rails.application.routes.draw do
  # get "articles/index"
  # get "articles/edit"
  # get "articles/new"
  # get "articles/show"
  # get "articles/update"
  root "articles#index"
resources :articles do
  resources :comments, only: [:create, :destroy]
end
end
