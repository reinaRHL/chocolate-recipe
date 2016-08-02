class AddRecipeIdToDairies < ActiveRecord::Migration
  def change
    add_column :dairies, :recipe_id, :integer
  end
end
