Rails.application.routes.draw do
get "/products/" => "products#index"
get "/products/:id" => "products#show"
post "/products" => "products#create"
delete "/products/:id" => "products#delete"
patch "/products/:id" => "products#update"

# supplier routes
get "/suppliers/" => "suppliers#index"
get "/suppliers/:id" => "suppliers#show"
post "/suppliers" => "suppliers#create"
delete "/suppliers/:id" => "suppliers#delete"
patch "/suppliers/:id" => "suppliers#update"

# user routes
post "/users" => "users#create"

# session routes
post "/sessions" => "sessions#create"

end
