Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "catalog#categories"
  
  get "/catalog",     to: "catalog#categories"
  get "/catalog/json",     to: "catalog#categories_json"
  get "/catalog/:id", to: "catalog#products"
  get "/catalog/json/:id", to: "catalog#products_json"
end
