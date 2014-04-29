class IngredientsController < ApplicationController
  
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create ingredients_params
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update_attributes ingredient_params
    redirect_to(ingredient)
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.delete
    redirect_to(ingredients_path)
  end
  
  private
    def ingredients_params
      params.require(:ingredient).permit(:name, :brand, :image)
    end
end
