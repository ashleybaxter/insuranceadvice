Insuranceadvice::Application.routes.draw do

  resources :users, :entries, :sessions, :searches
  
  root :to => "entries#index"

end
