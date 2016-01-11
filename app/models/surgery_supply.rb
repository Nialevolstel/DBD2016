class SurgerySupply < ActiveRecord::Base
  belongs_to :surgery
  belongs_to :supply
end
