class AddRecipeIdToPurees < ActiveRecord::Migration
  def change
    add_column :purees, :recipe_id, :integer
  end
end
