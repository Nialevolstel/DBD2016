class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :nombre_insumo, limit: 50, null: false
      t.integer :stock_insumo, null: false
      t.integer :costo_insumo, null: false
      t.references :article_clasification, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :supplies, :nombre_insumo, unique: true
  end
end
