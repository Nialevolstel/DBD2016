class MedicalStaffSpeciality < ActiveRecord::Base
  belongs_to :speciality
  belongs_to :medical_staff
end
