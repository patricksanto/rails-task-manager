Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # SHOW  ALL TASKS
  get 'tasks', to: 'tasks#index'

  # POST THE NEW TASK
  post 'tasks', to: 'tasks#create'

  # NEW TASK FORM
  get 'tasks/new', to: 'tasks#new'

  # SHOW A SINGLE ONE
  get 'tasks/:id', to: 'tasks#show', as: '/task'

  # form para editar
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # post the infos of edit
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete_task'

end
