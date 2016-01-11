class HospitalWardSurgery < ActiveRecord::Base
  belongs_to :hospital_ward
  belongs_to :surgery
end
