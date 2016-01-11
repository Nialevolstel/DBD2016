class CreateMedicalStaffs < ActiveRecord::Migration
  def change
    create_table :medical_staffs do |t|
      t.string :rut_personal_medico, limit: 12, null: false
      t.string :primer_nombre, limit: 50, null: false
      t.string :segundo_nombre, limit: 50
      t.string :apellido_paterno, limit: 50, null: false
      t.string :apellido_materno, limit: 50
      t.string :sexo, limit: 1, null: false
      t.string :telefono_fijo, limit: 15
      t.string :telefono_movil, limit: 15

      t.timestamps null: false
    end
    add_index :medical_staffs, :rut_personal_medico, unique: true
  end
end
