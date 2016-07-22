class CreatePurees < ActiveRecord::Migration
  def change
    create_table :purees do |t|
      t.string :pureename
      t.float :amount
      t.timestamps null: false
    end
  end
end
