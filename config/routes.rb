CognitiveWalkthroughHelper::Application.routes.draw do
  resources :walkthroughs do
    resources :tasks, :only => [:index, :create, :new]
  end
  
  resources :tasks, :except => [:index, :create, :new] do
    resources :actions, :only => [:index, :create, :new]
  end
  
  resources :actions, :except => [:index, :create, :new]
  
  devise_for :users
  
  root to: 'walkthroughs#index'
end
