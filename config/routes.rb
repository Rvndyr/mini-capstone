Rails.application.routes.draw do
get "/products/:list_products", controller: "products", action: "all_products"
get "/id_product", controller: "products", action: "id_product"
end
