class PostJob < ApplicationRecord
  has_one :employer
	has_many :apply_activities
	has_one :job_type
	has_one :job_location
	has_one :post_status
end
