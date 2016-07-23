class RecipesController < ApplicationController
  
  def index
     @recipes = Recipe.all
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end
 
  def new
    @recipe = Recipe.new 
    chocolate = @recipe.chocolates.build
    dairy = @recipe.dairies.build
    liqueur = @recipe.liqueurs.build
    puree = @recipe.purees.build
    other_ingredient = @recipe.other_ingredients.build
  end
 
  def edit
    @recipe = Recipe.find(params[:id])
  end
 
  def create
    @recipe = Recipe.new(recipe_params)
    
 
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end
 
  def update
    @recipe = Recipe.find(params[:id])
 
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end
 
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end
 
  private
    def recipe_params
      params.require(:recipe).permit(:id, :title, :description, :chocolates_attributes =>
                                     [:id, :chocolatename, :amount, :recipe_id])
    end
    
    
    
end
