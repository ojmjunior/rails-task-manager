Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Read all tasks
  get 'tasks', to: 'tasks#index', as: :tasks

  # Create a new task
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create', as: :create

  # Update one specific task
  get 'task/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'task/:id', to: 'tasks#update'

  # Delete one specific task
  delete 'task/:id', to: 'tasks#destroy'

  # Read one specific task
  get 'task/:id', to: 'tasks#show', as: :task
end
