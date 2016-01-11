class CreateSurgeryStates < ActiveRecord::Migration
  def change
    create_table :surgery_states do |t|
      t.string :nombre_estado, limit: 15, null: false

      t.timestamps null: false
    end
    add_index :surgery_states, :nombre_estado, unique: true
  end
end
