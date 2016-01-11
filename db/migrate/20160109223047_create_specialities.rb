class CreateSpecialities < ActiveRecord::Migration
  def change
    create_table :specialities do |t|
      t.string :nombre_especialidad, limit: 50, null: false

      t.timestamps null: false
    end
    add_index :specialities, :nombre_especialidad, unique: true
  end
end
