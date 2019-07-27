class CocktailsController < ApplicationController
  before_action :set_cocktails, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def new
    @cocktail = cocktail.new
  end

  def edit() end

  def show() end

  def update
    @cocktail.update(cocktail_params)
    # redirect_to cocktails_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    # redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktails
    @cocktail = cocktail.find(params[:id])
  end
end
