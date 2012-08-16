UrbanhafnerCom::Application.routes.draw do

  get "welcomes/show"

  resource :contact,  :only => [:create, :show]
  resource :resume,   :only => [:show]
  resource :projects, :only => [:show]
  resource :welcome,  :only => [:show]
  root :to => 'welcomes#show'
end
