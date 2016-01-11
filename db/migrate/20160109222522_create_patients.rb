class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :rut_paciente, limit: 12, null: false
      t.string :primer_nombre, limit: 50, null: false
      t.string :segundo_nombre, limit: 50
      t.string :apellido_paterno, limit: 50, null: false
      t.string :apellido_materno, limit: 50
      t.date :fecha_nacimiento, null: false
      t.string :sexo, limit: 1, null: false
      t.string :telefono_fijo, limit: 15
      t.string :telefono_movil, limit: 15

      t.timestamps null: false
    end
    add_index :patients, :rut_paciente, unique: true
  end
end
