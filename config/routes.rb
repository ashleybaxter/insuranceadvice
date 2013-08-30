Insuranceadvice::Application.routes.draw do
  
  root :to => "entries#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :users, :entries, :sessions, :searches

end
