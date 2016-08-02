class CreateLinkRecipeIng < ActiveRecord::Migration
  def change
    create_table :link_recipe_ings do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :chocolate, index: true
      t.belongs_to :dairy, index: true
      t.belongs_to :puree, index: true 
      t.belongs_to :liqueur, index: true
      t.timestamps
    end
  end
end
