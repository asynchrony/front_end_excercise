FrontendExercise::Application.routes.draw do
  resources :homepage, :only => [:index]
  resources :profiles

  root :to => 'profiles#index'
end
