class CreateHospitalWardSurgeries < ActiveRecord::Migration
  def change
    create_table :hospital_ward_surgeries do |t|
      t.references :hospital_ward, index: true, foreign_key: true
      t.references :surgery, index: true, foreign_key: true
      t.date :fecha_inicio
      t.time :hora_inicio
      t.date :fecha_fin
      t.date :hora_fin

      t.timestamps null: false
    end
  end
end
