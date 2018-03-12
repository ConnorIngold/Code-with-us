Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"}
  root to: 'pages#home'
  resources :projects do
    resources :project_invites, only: [:new, :create]
    resources :tasks, only: [:new, :create, :edit, :update]
    resources :project_techs, only: [:index]
  end
  resources :project_invites, only: [:index, :edit, :update, :destroy]
  resources :tasks, only: [:destroy]
  resources :technologies, only: [:index]
  resources :users, only: [:show, :edit, :update] do
    resources :user_techs, only: [:index]
  end

  get 'project_invites/:id/accept' => 'project_invites#status_accept', as: 'accept'
  get 'project_invites/:id/decline' => 'project_invites#status_decline', as: 'decline'
  get 'tasks/:id/complete' => 'tasks#complete', as: 'complete'
  get 'tasks/:id/not_complete' => 'tasks#not_complete', as: 'not_complete'
  get 'projects/:id/closed' => 'projects#closed', as: 'closed'
  get 'projects/:id/open' => 'projects#open', as: 'open'
  get 'projects/:id/private' => 'projects#private', as: 'private'
  get 'projects/:id/public' => 'projects#public', as: 'public'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
