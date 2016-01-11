class MedicalTeamMedicalStaff < ActiveRecord::Base
  belongs_to :medical_team
  belongs_to :medical_staff
  belongs_to :speciality
end
