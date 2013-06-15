UrbanhafnerCom::Application.routes.draw do

  match '/resume' => redirect("/projects")
  match '/photo'  => redirect("http://urbanhafnerphoto.com")

  resource :contact,  :only => [:create, :show]
  resource :projects, :only => [:show]
  resource :welcome,  :only => [:show]

  resources :blog, :only => [:index]

  root :to => 'welcomes#show'
end
