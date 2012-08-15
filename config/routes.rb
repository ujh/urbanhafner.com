UrbanhafnerCom::Application.routes.draw do

  resource :contact, :only => [:create]
  root :to => 'pages#index'
end
