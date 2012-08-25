class ShiftAssignment < ActiveRecord::Base
  belongs_to :shift
  belongs_to :staffer
  belongs_to :assignment_status
  # attr_accessible :title, :body
end
