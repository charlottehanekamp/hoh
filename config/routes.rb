Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'pages#index'
  

  mount API::Base => '/'

  devise_for :users, path: "auth", controllers: { sessions: "auth" }
end
