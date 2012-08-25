class Location < ActiveRecord::Base
  belongs_to :contact_info
  attr_accessible :name
end
