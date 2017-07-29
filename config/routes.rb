Rails.application.routes.draw do
  resources :assignments
  resources :employees
  resources :games do
    resources :assignments
  end
end
