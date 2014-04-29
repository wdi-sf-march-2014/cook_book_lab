class IngredientsController < ApplicationController
  
  def index
    @ingredients = ingredient.all
  end

  def new
    @ingredients = ingredient.new
  end

  def create
    @ingredients
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
