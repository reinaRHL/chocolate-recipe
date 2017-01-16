class RecipesController < ApplicationController
  
  def index
     @recipes = Recipe.all
  
  end
  
  def show
    @recipe = Recipe.find(params[:id])

  end
 
 #nested model
  def new
    @recipe = Recipe.new 
    
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
 
 #nested model: make sure to include :id, and :_destroy
  private
    def recipe_params
      params.require(:recipe).permit(
        :id, :title, :description, :notes, 
        :chocolate_amount, :dairy_amount, :puree_amount, :liqueur_amount,
        :link_recipe_ings_attributes => [:id, :recipe_id, :chocolate_id, :dairy_id, :puree_id, :liqueur_id],
        :other_ingredients_attributes => [:id, :name, :amount, :recipe_id, :_destroy])
    end
end
