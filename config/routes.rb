Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => "pages#home"
resources :users

get "/login" => "session#new"
post "/login" => "session#create"
delete "/login" => "session#destroy"

get "/posts/filter" => "posts#filter", :as => "filter"
get "/posts/search" => "posts#search", :as => "search"

resources :posts
resources :comments


get "/users/:id/posts" => "posts#user_posts", :as => "user_posts"
get "/users/:id/comments" => "comments#user_comments", :as => "user_comments"

end
