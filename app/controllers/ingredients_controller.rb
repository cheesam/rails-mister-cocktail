class IngredientsController < ApplicationController
  before_action :set_ingredients, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to cocktails_path
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit() end

  def show() end

  def update
    @ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredient_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def set_cocktails
    @ingredient = Ingredient.find(params[:id])
  end
end
