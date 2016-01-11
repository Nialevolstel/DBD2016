class Receipt < ActiveRecord::Base
  belongs_to :surgery
  belongs_to :receipt_state
end
