class AddAttrsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rut_gestor, :string, limit: 12, null: false
    add_index :users, :rut_gestor, unique: true
    add_column :users, :primer_nombre, :string, limit: 50, null: false
    add_column :users, :segundo_nombre, :string, limit: 50
    add_column :users, :apellido_paterno, :string, limit: 50, null: false
    add_column :users, :apellido_materno, :string, limit: 50
    add_column :users, :sexo, :string, limit: 1, null: false
    add_column :users, :telefono_fijo, :string, limit: 15
    add_column :users, :telefono_movil, :string, limit: 15
  end
end
