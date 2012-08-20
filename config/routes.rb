UrbanhafnerCom::Application.routes.draw do

  resource :contact,  :only => [:create, :show]
  resource :resume,   :only => [:show]
  resource :projects, :only => [:show]
  resource :welcome,  :only => [:show]
  
  resources :blog, :only => [:index]

  root :to => 'welcomes#show'
end
