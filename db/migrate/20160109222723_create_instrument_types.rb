class CreateInstrumentTypes < ActiveRecord::Migration
  def change
    create_table :instrument_types do |t|
      t.references :article_clasification, index: true, foreign_key: true
      t.string :nombre_instrumentaria, null: false
      t.text :descripcion_instrumentaria
      t.integer :precio_por_hora, null: false

      t.timestamps null: false
    end
    add_index :instrument_types, :nombre_instrumentaria, unique: true
  end
end
