class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.references :instrument_type, index: true, foreign_key: true
      t.references :hospital_ward, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
