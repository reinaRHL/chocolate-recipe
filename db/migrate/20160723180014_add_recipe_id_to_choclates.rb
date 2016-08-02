class AddRecipeIdToChoclates < ActiveRecord::Migration
  def change
    add_column :chocolates, :recipe_id, :integer
  end
end
