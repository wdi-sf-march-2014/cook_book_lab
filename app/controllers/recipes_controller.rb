class RecipesController < ApplicationController
  before_action :load_recipe, only: [:show, :edit, :update, :destroy]
 
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create recipe_params
    redirect_to(recipe)
  end

  def show
  end

  def edit
  end

  def update
    @recipe.update_attributes recipe_params
    redirect_to(@recipe)
  end
  
  def destroy
    @recipe.delete
    redirect_to(@recipes_path)
  end

  def load_recipe
    @recipe = Recipe.find(params[:id])
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :course, :cooktime, :servingsize, :instructions, :quantities)
    end
end
