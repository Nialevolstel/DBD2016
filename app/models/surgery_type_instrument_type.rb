class SurgeryTypeInstrumentType < ActiveRecord::Base
  belongs_to :surgery_type
  belongs_to :instrument_type
end
