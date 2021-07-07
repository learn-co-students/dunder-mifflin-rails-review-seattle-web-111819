Rails.application.routes.draw do
  # get 'employees/index'

  # get 'employees/show'

  # get 'employees/edit'

  # get 'employees/new'

  # get 'dogs/index'

  # get 'dogs/show'

  # get 'dogs/edit'

  # get 'dogs/new'

  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
