class Job < ActiveRecord::Base
  belongs_to :job_type
  # attr_accessible :title, :body
end
