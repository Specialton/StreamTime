class Event < ActiveRecord::Base
  belongs_to :location
  attr_accessible :end_datetime, :name, :start_datetime
end
