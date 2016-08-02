class DropColumnsToTables < ActiveRecord::Migration
  def change
    remove_column :chocolates, :recipe_id
    remove_column :chocolates, :amount
    remove_column :dairies, :recipe_id
    remove_column :dairies, :amount
    remove_column :liqueurs, :recipe_id
    remove_column :liqueurs, :amount
    remove_column :purees, :recipe_id
    remove_column :purees, :amount
    remove_column :recipes, :chocolate_name
  end
end
