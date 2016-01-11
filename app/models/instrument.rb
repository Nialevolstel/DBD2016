class Instrument < ActiveRecord::Base
  belongs_to :instrument_type
  belongs_to :hospital_ward
end
