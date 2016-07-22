class CreateChocolates < ActiveRecord::Migration
  def change
    create_table :chocolates do |t|
      t.string :chocolatename
      t.float :amount
      t.timestamps null: false
    end
  end
end
