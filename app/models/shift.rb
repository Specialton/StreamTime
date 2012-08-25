class Shift < ActiveRecord::Base
  belongs_to :job
  belongs_to :location
  attr_accessible :end_datetime, :start_datetime
end
