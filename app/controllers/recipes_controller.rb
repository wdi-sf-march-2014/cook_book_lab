class RecipesController < ApplicationController
 
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    #build is similar to .new. So, it doesn't save to the database. 
    @ing_meas = @recipe.ingredients_measurements.build #this line says, for the recipe_id for this new recipe we just created, go to the ingredients_measurements table and instantiate a new ingredients_measurements model. 
    @ing_meas.build_ingredient #this line says, for the new ingredients_measurements table that we just created, go to the ingredients and table make a new ingredient 
  end

  def create
    recipe = Recipe.create recipe_params
    redirect_to(recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update_attributes recipe_params
    redirect_to(recipe)
  end
  
  def destroy
    recipe = Recipe.find(params[:id])
    recipe.delete
    redirect_to(recipes_path)
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :course, :cooktime, :servingsize, :instructions, ingredients_measurements_attributes: [:quantity, ingredient_attributes: [:name, :brand]])
    end
end
