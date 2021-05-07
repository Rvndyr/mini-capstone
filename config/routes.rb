Rails.application.routes.draw do
get "/products/" => "products#index"
get "/products/:id" => "products#show"
post "/products/create" => "products#create"
delete "/products/delete/:id" => "products#delete"
end
