Rails.application.routes.draw do
  get 'posts/new'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/blogs' => 'blogs#index'
  # get '/blogs/new' => 'blogs#new'
  # post '/blogs' => 'blogs#create'
  # get '/blogs/:id' => 'blogs#show', as: "blog"
  # get "/blogs/:id/edit" => "blogs#edit", as: "edit_blog"
  resources :blogs
   patch '/blogs/:id' => 'blogs#update', as: 'update_blog'
   delete "/blogs/:id" => "blogs#destroy", as: "destroy_blog"
   root "blogs#index"
end
