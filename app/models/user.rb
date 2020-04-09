# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user_name, presence: true
  validates :user_type, presence: true
  # validates :user_type, inclusion: { in: %w[candidate employer admin] }
  enum user_type: { candidate: 0, employer: 1, admin: 2 }

  USER_TYPE = %w[candidate employer].freeze
end
