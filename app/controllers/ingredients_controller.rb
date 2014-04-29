class IngredientsController < ApplicationController
  
  before_action :load_ingredient, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    ingredient.update_attributes ingredient_params
    redirect_to(ingredient)
  end

  def destroy
    ingredient.delete
    redirect_to(ingredients_path)
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :brand, :image)
    end

    def load_ingredient
      ingredient = Ingredient.find(params[:id])
    end
end
