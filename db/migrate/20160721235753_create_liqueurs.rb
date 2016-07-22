class CreateLiqueurs < ActiveRecord::Migration
  def change
    create_table :liqueurs do |t|
      t.string :liquorname
      t.float :amount
      t.timestamps null: false
    end
  end
end
