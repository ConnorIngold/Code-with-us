Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :projects do
    resources :project_invites, only: [:new, :create, :edit, :update]
    resources :task, only: [:new, :create, :edit, :update, :delete]
    resources :project_tech, only: [:index]
  end
  resources :technologies, only: [:index]
  resources :users, only: [:show, :edit, :update] do
    resources :user_tech, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
