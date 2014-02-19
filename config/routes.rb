CognitiveWalkthroughHelper::Application.routes.draw do
  resources :walkthroughs do
    member do
      get 'summary'
      get 'report'
    end
  
    resources :tasks, :only => [:index, :create, :new]
  end
  
  resources :tasks, :except => [:index, :create, :new] do
    resources :user_actions, :only => [:index, :create, :new]
  end
  
  resources :user_actions, :except => [:index, :create, :new]
  
  devise_for :users
  
  root to: 'walkthroughs#index'
end
