Rails.application.routes.draw do
  get 'score/list', to: 'score#list'

  root 'main#first_page'
  get 'main/test'
  post 'main/test'
  post 'score/list'
  
  post 'main/test_post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
