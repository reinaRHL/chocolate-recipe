class AddRecipeIdToLiqueurs < ActiveRecord::Migration
  def change
    add_column :liqueurs, :recipe_id, :integer
  end
end
