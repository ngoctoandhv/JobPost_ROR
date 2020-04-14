class Candidate < ApplicationRecord
  has_one :user

  validates :date_of_birth, presence: true
end
