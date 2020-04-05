class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user_name, presence: true
  validates :user_type, presence: true
  validates :user_type, inclusion: {in: %w(Candidate Employer),allow_blank: true}

  USER_TYPE = %w{ Candidate Employer }
end
