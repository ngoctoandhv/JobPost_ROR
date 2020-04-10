# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable
  has_one :employer
  has_one :candidate

  validates :user_name, presence: true
  validates :user_type, presence: true
  # validates :user_type, inclusion: { in: %w[candidate employer admin] }
  enum user_type: { candidate: 1, employer: 2, admin: 3 }

  USER_TYPE = { "Candidate" => "candidate", "Employer" => "employer" }.freeze
end
