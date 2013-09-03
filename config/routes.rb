Insuranceadvice::Application.routes.draw do
  
  get 'tags/:tag', to: 'entries#index', as: :tag
  
  root :to => "entries#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :users, :entries, :sessions, :searches

end
