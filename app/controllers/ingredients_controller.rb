class IngredientsController < ApplicationController
  
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = Ingredient.create ingredient_params
    redirect_to(ingredient)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    ingredient = ingredient.find(params[:id])
    ingredient.update_attributes ingredient_params
    redirect_to(ingredient)
  end

  def destroy
    ingredient = ingredient.find(params[:id])
    ingredient.delete
    redirect_to(ingredients_path)
  end
end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :course, :cooktime, :servingsize, :instructions)
    end