class AddChocolateNameToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :chocolate_name, :string
  end
end
