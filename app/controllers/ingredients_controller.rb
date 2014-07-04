class IngredientsController < ApplicationController
  before_action :load_ingredient, only: [:show, :edit, :update, :destroy]
  
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
    @ingredient.quantities.build
  end

  def create
    @ingredient = Ingredient.new ingredient_params
    redirect_to(@ingredient)
  end

  def show
  end

  def edit
  end

  def update
    @ingredient.update ingredient_params 
    redirect_to @ingredient 
  end

  def destroy
    @ingredient.destroy
    redirect_to(ingredients_path)
  end

  def load_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :brand, :image, :quantities)
    end
end
