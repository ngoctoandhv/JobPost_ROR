class ApplyActivity < ApplicationRecord
  has_one :candidate
  has_one :post_job
end
