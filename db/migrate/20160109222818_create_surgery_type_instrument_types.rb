class CreateSurgeryTypeInstrumentTypes < ActiveRecord::Migration
  def change
    create_table :surgery_type_instrument_types do |t|
      t.references :surgery_type, index: true, foreign_key: true
      t.references :instrument_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
