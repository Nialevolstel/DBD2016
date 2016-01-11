class CreateReceiptStates < ActiveRecord::Migration
  def change
    create_table :receipt_states do |t|
      t.string :nombre_stado, limit: 15, null: false

      t.timestamps null: false
    end
    add_index :receipt_states, :nombre_stado, unique: true
  end
end
