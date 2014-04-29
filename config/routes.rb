Cookbook::Application.routes.draw do
  resources :recipes, :ingredients

  root to: 'recipes#index'
  
end
