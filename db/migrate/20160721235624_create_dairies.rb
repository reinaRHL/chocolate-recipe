class CreateDairies < ActiveRecord::Migration
  def change
    create_table :dairies do |t|
      t.string :dairyname
      t.float :amount
      t.timestamps null: false
    end
  end
end
