class CreateSurgerySupplies < ActiveRecord::Migration
  def change
    create_table :surgery_supplies do |t|
      t.references :surgery, index: true, foreign_key: true
      t.references :supply, index: true, foreign_key: true
      t.integer :cantidad_utilizada, null: false

      t.timestamps null: false
    end
  end
end
