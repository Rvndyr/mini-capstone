Rails.application.routes.draw do
get "/products", controller: "products", action: "all_products"
get "/first_product", controller: "products", action: "first_product"
end
