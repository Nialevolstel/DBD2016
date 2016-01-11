class CreateHospitalWards < ActiveRecord::Migration
  def change
    create_table :hospital_wards do |t|
      t.integer :numero_sala, null: false

      t.timestamps null: false
    end
    add_index :hospital_wards, :numero_sala, unique: true
  end
end
