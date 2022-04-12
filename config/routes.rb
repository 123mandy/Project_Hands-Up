Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => "pages#home"
resources :users, :only => [:new, :create, :index, :show]

get "/login" => "session#new"
post "/login" => "session#create"
delete "/login" => "session#destroy"

get "/main" =>"pages#main"
resources :posts, :only => [:new, :create, :destroy, :edit, :show]
resources :comments, :only => [:create, :destroy, :edit]

end
