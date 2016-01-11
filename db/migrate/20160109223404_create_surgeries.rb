class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.references :surgery_type, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.references :surgery_state, index: true, foreign_key: true
      t.references :medical_team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
