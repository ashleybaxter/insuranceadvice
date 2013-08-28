Insuranceadvice::Application.routes.draw do

  resources :users, :entries, :sessions
  
  root :to => "entries#index"

end
