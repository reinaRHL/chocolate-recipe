class CreateOtherIngredients < ActiveRecord::Migration
  def change
    create_table :other_ingredients do |t|
      t.string :name
      t.float :amount
      t.timestamps null: false
    end
  end
end
