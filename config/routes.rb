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

# order(s) routes
post "/orders" => "orders#create"
get "/orders" => "orders#index"
get "/orders/:id" => "orders#show"

# cart routes
post "/cart" => "carted_products#create"
get "/cart" => "carted_products#index"

end
