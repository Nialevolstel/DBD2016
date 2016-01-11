class CreateSurgeryTypes < ActiveRecord::Migration
  def change
    create_table :surgery_types do |t|
      t.string :nombre_cirugia, limit: 50, null: false

      t.timestamps null: false
    end
    add_index :surgery_types, :nombre_cirugia, unique: true
  end
end
