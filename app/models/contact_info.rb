class ContactInfo < ActiveRecord::Base
  attr_accessible :city, :email, :phone, :state, :street_address_1, :street_address_2, :zip
end
