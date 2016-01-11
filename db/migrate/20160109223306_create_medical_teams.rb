class CreateMedicalTeams < ActiveRecord::Migration
  def change
    create_table :medical_teams do |t|
      t.boolean :es_valido, null: false

      t.timestamps null: false
    end
  end
end
