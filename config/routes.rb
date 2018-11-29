Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#create'
  get 'todos/new'
  get 'todos/:id/edit', to: 'todos#edit', as: 'todos_edit'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  patch 'todos/:id', to: 'todos#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
