class CreateMedicalTeamMedicalStaffs < ActiveRecord::Migration
  def change
    create_table :medical_team_medical_staffs do |t|
      t.references :medical_team, index: true, foreign_key: true
      t.references :medical_staff, index: true, foreign_key: true
      t.references :speciality, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
