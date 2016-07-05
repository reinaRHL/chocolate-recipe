class AddRecipeIdToOtherIngredients < ActiveRecord::Migration
  def change
    add_column :other_ingredients, :recipe_id, :integer
  end
end
