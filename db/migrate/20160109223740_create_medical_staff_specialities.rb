class CreateMedicalStaffSpecialities < ActiveRecord::Migration
  def change
    create_table :medical_staff_specialities do |t|
      t.references :speciality, index: true, foreign_key: true
      t.references :medical_staff, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
