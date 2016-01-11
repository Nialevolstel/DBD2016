class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.references :surgery, index: true, foreign_key: true
      t.integer :monto_total, null: false
      t.references :receipt_state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
