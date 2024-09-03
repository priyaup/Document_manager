Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :documents
  resources :employees
  resources :projects
  resources :tasks
  resources :employee_projects
  resources :offices
  

  resources :students, param: :id

  


  # namespace :admin do
  #   resources :employees
  # end
end
