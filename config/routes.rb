Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'list', to: 'tasks#list'
  get 'tasks', to: 'tasks#index'
  get 'index', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#find', as: 'task'
  get 'new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edittask'
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
