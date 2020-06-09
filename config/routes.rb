Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # CRUD = Create Read Update Delete
  # Verb = get (read) post (create) patch (update) delete (destroy)

  # a user can display all the restaurants
  # get 'restaurants', to: 'restaurants#index', as: :restaurants

  # # a user can display one restaurant
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant # display the form
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # # a user can create a restaurant
  # # verb 'path', to: 'controller#action'
  # post 'restaurants', to: 'restaurants#create'

  # # a user can update a restaurant
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant # display the form
  # patch 'restaurants/:id', to: 'restaurants#update'

  # # a user can destroy a restaurant
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants
end
