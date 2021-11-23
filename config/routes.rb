# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#new'
  # get 'tasks/:id', to: 'tasks#show'
  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create' # no view
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # NB: The `show` route needs to be *after* `new` route.
  get 'tasks/:id', to: 'tasks#show', as: :task

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update' # no view

  delete 'tasks/:id', to: 'tasks#destroy' # no view
end
