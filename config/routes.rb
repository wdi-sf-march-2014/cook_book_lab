Cookbook::Application.routes.draw do
  resources :recipes, :ingredients

  root to: 'recipes#index'
end

#        Prefix Verb   URI Pattern                     Controller#Action
#         recipes GET    /recipes(.:format)              recipes#index
#                 POST   /recipes(.:format)              recipes#create
#      new_recipe GET    /recipes/new(.:format)          recipes#new
#     edit_recipe GET    /recipes/:id/edit(.:format)     recipes#edit
#          recipe GET    /recipes/:id(.:format)          recipes#show
#                 PATCH  /recipes/:id(.:format)          recipes#update
#                 PUT    /recipes/:id(.:format)          recipes#update
#                 DELETE /recipes/:id(.:format)          recipes#destroy
#     ingredients GET    /ingredients(.:format)          ingredients#index
#                 POST   /ingredients(.:format)          ingredients#create
#  new_ingredient GET    /ingredients/new(.:format)      ingredients#new
# edit_ingredient GET    /ingredients/:id/edit(.:format) ingredients#edit
#      ingredient GET    /ingredients/:id(.:format)      ingredients#show
#                 PATCH  /ingredients/:id(.:format)      ingredients#update
#                 PUT    /ingredients/:id(.:format)      ingredients#update
#                 DELETE /ingredients/:id(.:format)      ingredients#destroy
#            root GET    /                               recipes#index