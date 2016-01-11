class Surgery < ActiveRecord::Base
  belongs_to :surgery_type
  belongs_to :user
  belongs_to :patient
  belongs_to :surgery_state
  belongs_to :medical_team
end
