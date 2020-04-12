class Candidate < ApplicationRecord
  has_one :user
  has_many :post_jobs
end
