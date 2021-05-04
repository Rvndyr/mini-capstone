Rails.application.routes.draw do
get "/product", controller: "products", action: "single_product"
end
